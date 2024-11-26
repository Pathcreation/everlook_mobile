import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/source/keys.dart';
import 'package:everlook_mobile/source/preferences.dart';

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
          if (tokens?.token != null && tokens?.token != '') {
            request.headers['Authorization'] = 'Token ${tokens!.token}';
          }
          return handler.next(request);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
            await storage.delete();
          } else if (e.response?.statusCode == 404 && e.requestOptions.path.contains('refreshToken')) {
            await storage.delete();
          }
          // else {
          //   throw e;
          // }
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
          token: (value.data as Map)[Keys.accessToken] as String,
          refresh: (value.data as Map)[Keys.refreshToken] as String,
        ),
      );
      return AuthTokenPair(
        token: (value.data as Map)[Keys.accessToken] as String,
        refresh: (value.data as Map)[Keys.refreshToken] as String,
      );
    });

    return const AuthTokenPair(
      token: '',
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
