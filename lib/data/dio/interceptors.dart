import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/source/keys.dart';
import 'package:everlook_mobile/source/preferences.dart';
import 'package:restart_app/restart_app.dart';

class AppInterceptors {
  late Interceptors interceptors;

  Future<Interceptors> getInterceptors({
    required Dio dio,
    required TokenStorageImpl storage,
  }) async {
    interceptors = Interceptors();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          final tokens = await storage.read();
          if (tokens != null && tokens.access != '') {
            request.headers['Authorization'] = 'Bearer ${tokens.access}';
          }
          return handler.next(request);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
            if (!e.requestOptions.path.contains('refreshToken')) {
              try {
                await _refreshRequest(dio, storage).then((value) async {
                  e.requestOptions.headers["Authorization"] =
                      "Bearer ${value.access}";
                  final opts = Options(
                    method: e.requestOptions.method,
                    headers: e.requestOptions.headers,
                  );
                  final cloneReq = await dio.request(e.requestOptions.path,
                      options: opts,
                      data: e.requestOptions.data,
                      queryParameters: e.requestOptions.queryParameters);

                  return handler.resolve(cloneReq);
                });
              } catch (e, st) {
                debugPrint(e.toString());
              }
            } else {
              await Preferences.clear().then((_) async {
                await storage.delete();
              });
            }
          }
          if (e.response?.statusCode == 404 &&
              e.requestOptions.path.contains('refreshToken')) {
            await storage.delete();
          }
        },
      ),
    );

    return interceptors;
  }

  Future<AuthTokenPair> _refreshRequest(
    Dio dio,
    TokenStorageImpl tokenStorage,
  ) async {
    await dio
        .post(
      '${Endpoints.refreshToken}/${Preferences.loadRefreshToken()}',
      options: Options(
        headers: {},
      ),
    )
        .then((value) async {
      await tokenStorage.write(
        AuthTokenPair(
          access: (value.data as Map)[Keys.accessToken] as String,
          refresh: (value.data as Map)[Keys.refreshToken] as String,
        ),
      );
      return AuthTokenPair(
        access: (value.data as Map)[Keys.accessToken] as String,
        refresh: (value.data as Map)[Keys.refreshToken] as String,
      );
    });

    return const AuthTokenPair(
      access: '',
      refresh: '',
    );
  }
}

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Неверный запрос';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Произошла неизвестная ошибка, повторите попытку позже.';
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Произошел конфликт';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Пользователь не найден';
  }
}

class NotFoundException extends DioException {
  NotFoundException({
    required String message,
    required super.requestOptions,
  });

  @override
  String toString() {
    return message ?? '';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Интернет-соединение не обнаружено, попробуйте еще раз.';
  }
}

class DeadlineExceededException extends DioException {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Время ожидания соединения истекло, попробуйте еще раз.';
  }
}
