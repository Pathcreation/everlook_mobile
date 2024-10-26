import 'package:everlook_mobile/source/imports.dart';
import 'package:dio/io.dart';

class DioClient {
  const DioClient();

  /// Creating a client [Dio].
  Future<Dio> create({
    required Iterable<Interceptor> interceptors,
    required String url,
    required TokenStorageImpl tokenStorage,
    String? proxyUrl,
  }) async {
    const timeout = Duration(seconds: 30);

    final dio = Dio();
    AuthTokenPair? token = await tokenStorage.read();
    dio.options
      ..baseUrl = url
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..contentType = 'application/json'
      ..headers = {
        "Content-Type": "application/json",
        if (token != null && token.access.isNotEmpty)
          "Authorization": 'Bearer ${token.access}',
      }
      ..sendTimeout = timeout;

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      if (proxyUrl != null && proxyUrl.isNotEmpty) {
        client
          ..findProxy = (uri) {
            return 'PROXY $proxyUrl';
          }
          ..badCertificateCallback = (_, __, ___) {
            return true;
          };
      }
      return client;
    };

    dio.interceptors.addAll(interceptors);

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }

    return dio;
  }
}
