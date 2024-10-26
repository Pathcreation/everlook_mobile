import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:everlook_mobile/source/preferences.dart';

class FetchPreview {
  Future<Map<String, dynamic>> fetch(String url) async {
    final client = Client();

    String description = '';
    String title = '';
    String image = '';
    String appleIcon = '';
    String favIcon = '';
    Document? document;

    String? data = Preferences.getStringByKey(url);
    if (data != null) {
      final Map<String, dynamic> map = jsonDecode(data) as Map<String, dynamic>;
      title = map['title'] as String;
      description = map['description'] as String;
      image = map['image']as String;
    } else {
      final response = await client.get(
        Uri.parse(
          _validateUrl(url),
        ),
      );

      if (response.statusCode == 200) {
        document = parse(response.body);
        List<Node> elements = document.getElementsByTagName('meta');
        final linkElements = document.getElementsByTagName('link');
        for (Node tmp in elements) {
          if (tmp.attributes['property'] == 'og:title') {
            //fetch seo title
            title = tmp.attributes['content'] ?? '';
          }
          //if seo title is empty then fetch normal title
          if (title.isEmpty) {
            List<Element> list = document.getElementsByTagName('title');
            if (list.isNotEmpty) {
              title = list[0].text;
            }
          }

          //fetch seo description
          if (tmp.attributes['property'] == 'og:description') {
            description = tmp.attributes['content'] ?? '';
          }
          //if seo description is empty then fetch normal description.
          if (description.isEmpty) {
            //fetch base title
            if (tmp.attributes['name'] == 'description') {
              description = tmp.attributes['content'] ?? '';
            }
          }

          //fetch image
          if (tmp.attributes['property'] == 'og:image') {
            image = tmp.attributes['content'] ?? '';
          }
        }
        for (var tmp in linkElements) {
          if (tmp.attributes['rel'] == 'apple-touch-icon') {
            appleIcon = tmp.attributes['href'] ?? '';
          }
          if (tmp.attributes['rel']?.contains('icon') == true) {
            favIcon = tmp.attributes['href'] ?? '';
          }
        }
        Map<String, dynamic> map = {
          'title': title,
          'description': description,
          'image': image,
        };
        await Preferences.setStringByKey(url, jsonEncode(map));
      }
    }

    return {
      'title': title,
      'description': description,
      'image': image,
      'appleIcon': appleIcon,
      'favIcon': favIcon,
    };
  }

  String _validateUrl(String url) {
    if (url.startsWith('http://') == true ||
        url.startsWith('https://') == true) {
      return url;
    } else {
      return 'http://$url';
    }
  }
}
