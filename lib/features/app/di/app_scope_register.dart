import 'package:everlook_mobile/config/app_config.dart';
import 'package:everlook_mobile/data/dio/dio_client.dart';
import 'package:everlook_mobile/data/dio/interceptors.dart';
import 'package:everlook_mobile/persistence/storage/config_storage/config_storage_impl.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template app_scope_register.class}
/// Creates and initializes AppScope.
/// {@endtemplate}
final class AppScopeRegister {
  /// {@macro app_scope_register.class}
  const AppScopeRegister();

  /// Create scope.
  Future<IAppScope> createScope(Environment env) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final appConfig = _createAppConfig(env, sharedPreferences);

    const dioConfigurator = DioClient();
    const storage = TokenStorageImpl(
      FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      ),
    );

    final dio = await dioConfigurator.create(
      interceptors: [],
      tokenStorage: storage,
      url: appConfig.url,
      proxyUrl: appConfig.proxyUrl,
    );

    dio.interceptors.addAll(
      await AppInterceptors().getInterceptors(
        dio: dio,
        storage: storage,
      ),
    );

    return AppScope(
      appConfig: appConfig,
      sharedPreferences: sharedPreferences,
      dio: dio,
      tokenStorage: storage,
      // authRepository: AuthRepository(
      //   tokenStorage: storage,
      //   service: AuthService(
      //     dio,
      //     baseUrl: baseUrl,
      //   ),
      // ),
    );
  }

  AppConfig _createAppConfig(Environment env, SharedPreferences prefs) {
    if (env.isProd && kReleaseMode) {
      return AppConfig(url: env.buildType.defaultUrl);
    }

    final savedProxyUrl = _proxyUrl(prefs);

    return AppConfig(
      url: env.buildType.defaultUrl,
      proxyUrl: savedProxyUrl,
    );
  }

  String? _proxyUrl(SharedPreferences prefs) {
    final configStorage = ConfigStorageImpl(prefs);

    return configStorage.getProxyUrl();
  }
}
