import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:everlook_mobile/resources/resources.dart';

void main() {
  test('asset_favicon assets test', () {
    expect(File(AssetFavicon.androidChrome192x192).existsSync(), isTrue);
    expect(File(AssetFavicon.androidChrome512x512).existsSync(), isTrue);
    expect(File(AssetFavicon.appleTouchIcon).existsSync(), isTrue);
    expect(File(AssetFavicon.favicon16x16).existsSync(), isTrue);
    expect(File(AssetFavicon.favicon32x32).existsSync(), isTrue);
  });
}
