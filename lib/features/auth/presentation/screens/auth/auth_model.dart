import 'package:enum_assist_annotation/enum_assist_annotation.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/result.dart';
import 'package:everlook_mobile/core/architecture/presentation/base_model.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

@EnumAssist()
enum AuthState {
  signInClient,
  signInPro,
  createAccountClient,
  createAccountPro;

  T map<T>({
    required T Function() signInClient,
    required T Function() signInPro,
    required T Function() createAccountClient,
    required T Function() createAccountPro,
  }) {
    switch (this) {
      case AuthState.signInClient:
        return signInClient();
      case AuthState.signInPro:
        return signInPro();
      case AuthState.createAccountClient:
        return createAccountClient();
      case AuthState.createAccountPro:
        return createAccountPro();
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? signInClient,
    T Function()? signInPro,
    T Function()? createAccountClient,
    T Function()? createAccountPro,
  }) =>
      map<T>(
        signInClient: signInClient ?? orElse,
        signInPro: signInPro ?? orElse,
        createAccountClient: createAccountClient ?? orElse,
        createAccountPro: createAccountPro ?? orElse,
      );
}

/// {@template auth_model.class}
/// [ElementaryModel] for [AuthScreen].
/// {@endtemplate}
final class AuthModel extends BaseModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _authState = UnionStateNotifier<AuthState>.new(AuthState.signInClient);
  final _state = UnionStateNotifier<bool>.new(false);
  final _isObscure = UnionStateNotifier<bool>.new(true);
  final _agreeTerms = UnionStateNotifier<bool>.new(false);

  UnionStateNotifier<bool> get state => _state;

  UnionStateNotifier<AuthState> get authState => _authState;

  UnionStateNotifier<bool> get agreeTerms => _agreeTerms;

  UnionStateNotifier<bool> get isObscure => _isObscure;

  /// {@macro auth_model.class}
  AuthModel({
    required IAppScope appScope,
  }) : _appScope = appScope;

  @override
  void init() {
    super.init();
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    _state.loading();
    final result = await makeCall(() {
      return _appScope.profileRepository.login(
        email: email,
        password: password,
      );
    });
    switch (result) {
      case ResultOk(:final data):
        await _appScope.profileRepository.getCurrentUser().then((user) async {
          if (user != null) {
            await _appScope.tokenStorage.read().then((tokens) async {
              String? token;
              if (tokens?.firebaseToken != null) {
                token = tokens?.firebaseToken;
              } else {
                token = await FirebaseMessaging.instance.getToken();
              }
              print('FIREBASE_TOKEN: $token');
              await _appScope.profileRepository
                  .updateUser(user.copyWith(
                deviceToken: tokens?.firebaseToken,
                platform: Platform.isAndroid ? 'android' : 'ios',
              ))
                  .then((_) async {
                await _appScope.profileRepository.getLibraries();
                _state.content(data);
              });
            });
          }
        });
      case ResultFailed(:final failure):
        _state.failure(failure);
    }
  }

  void changeObscure() {
    _isObscure.content(!(_isObscure.value.data ?? false));
  }

  void changeAgreeTerms() {
    _agreeTerms.content(!(_agreeTerms.value.data ?? false));
  }

  void changeAuthState(AuthState state) {
    _authState.content(state);
  }
}
