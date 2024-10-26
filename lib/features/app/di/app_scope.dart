import 'package:everlook_mobile/config/app_config.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template app_scope.class}
/// Scope of dependencies which are needed through the whole app's life.
/// {@endtemplate}
final class AppScope implements IAppScope {
  @override
  final AppConfig appConfig;
  @override
  final SharedPreferences sharedPreferences;
  @override
  final Dio dio;
  @override
  final TokenStorageImpl tokenStorage;
  // @override
  // final IAuthRepository authRepository;


  /// {@macro app_scope.class}
  const AppScope({
    required this.appConfig,
    required this.sharedPreferences,
    required this.dio,
    required this.tokenStorage,
    // required this.authRepository,
  });
}

/// {@macro app_scope.class}
abstract interface class IAppScope {
  /// App configuration.
  AppConfig get appConfig;

  /// Http client.
  Dio get dio;

  /// Shared preferences.
  SharedPreferences get sharedPreferences;

  /// FlutterSecureStorage
  TokenStorageImpl get tokenStorage;

  // IAuthRepository get authRepository;

}
