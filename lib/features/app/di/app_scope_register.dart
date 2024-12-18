import 'package:everlook_mobile/config/app_config.dart';
import 'package:everlook_mobile/data/dio/dio_client.dart';
import 'package:everlook_mobile/data/dio/interceptors.dart';
import 'package:everlook_mobile/data/repositories/common_repository.dart';
import 'package:everlook_mobile/data/repositories/jobs_repository.dart';
import 'package:everlook_mobile/data/services/jobs_service/jobs_service.dart';
import 'package:everlook_mobile/persistence/storage/config_storage/config_storage_impl.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/source/localizations.dart';
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
    final FlutterLocalization _localization = FlutterLocalization.instance;
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

    _localization.init(
      mapLocales: [
        const MapLocale(
          'en',
          AppLocale.EN,
          countryCode: 'US',
          fontFamily: 'Prompt',
        ),
        const MapLocale(
          'ru',
          AppLocale.RU,
          countryCode: 'RU',
          fontFamily: 'Prompt',
        ),
        const MapLocale(
          'ar',
          AppLocale.AR,
          countryCode: 'AE',
          fontFamily: 'Prompt',
        ),
      ],
      initLanguageCode: 'ru',
    );

    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    await FirebaseMessaging.instance.requestPermission(provisional: true);
    if (Platform.isIOS) {
      final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      if (apnsToken != null) {
        await storage.read().then((tokens) async {
          await storage.write(
            AuthTokenPair(
              token: tokens?.token,
              firebaseToken: apnsToken,
            ),
          );
        });
      }
    } else {
      final token = await FirebaseMessaging.instance.getToken();
      if (token != null) {
        await storage.read().then((tokens) async {
          await storage.write(
            AuthTokenPair(
              token: tokens?.token,
              firebaseToken: token,
            ),
          );
        });
      }
    }

    return AppScope(
      appConfig: appConfig,
      sharedPreferences: sharedPreferences,
      dio: dio,
      tokenStorage: storage,
      localization: _localization,
      fontSizeCoef: 1,
      jobsRepository: JobsRepository(
        tokenStorage: storage,
        service: JobsService(
          dio,
          baseUrl: appConfig.url,
        ),
      ),
      profileRepository: ProfileRepository(
        tokenStorage: storage,
        service: ProfileService(
          dio,
          baseUrl: appConfig.url,
        ),
      ),
      commonRepository: CommonRepository(
        tokenStorage: storage,
        service: CommonService(
          dio,
          baseUrl: appConfig.url,
        ),
      ),
    );
  }

  AppConfig _createAppConfig(Environment env, SharedPreferences prefs) {
    if (env.isProd && kReleaseMode) {
      return AppConfig(
        url: env.buildType.defaultUrl,
        host: env.buildType.defaultHost,
      );
    }

    final savedProxyUrl = _proxyUrl(prefs);

    return AppConfig(
      url: env.buildType.defaultUrl,
      host: env.buildType.defaultHost,
      proxyUrl: savedProxyUrl,
    );
  }

  String? _proxyUrl(SharedPreferences prefs) {
    final configStorage = ConfigStorageImpl(prefs);

    return configStorage.getProxyUrl();
  }
}
