import 'package:everlook_mobile/source/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Server url.
class Url {
  /// Dev url.
  static String dev =
      '${dotenv.env['BASE_URL_DEV'] ?? baseUrl}$apiService/${dotenv.get("API_VERSION")}';

  /// Prod url.
  static String prod =
      '${dotenv.env['BASE_URL_PROD'] ?? baseUrl}$apiService/${dotenv.get("API_VERSION")}';
}
