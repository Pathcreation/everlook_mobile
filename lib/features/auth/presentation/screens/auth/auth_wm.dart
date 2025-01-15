import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/auth/di/auth_scope.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_model.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_screen.dart';

/// DI factory for [AuthWM].
AuthWM defaultAuthWMFactory(BuildContext context) {
  final scope = context.read<IAuthScope>();

  return AuthWM(AuthModel(
    appScope: scope.appScope,
  ));
}

/// Interface for [AuthWM].
abstract interface class IAuthWM with ThemeIModelMixin implements IWidgetModel {
  UnionStateNotifier<bool> get state;

  UnionStateNotifier<bool> get isObscure;

  TextEditingController get emailTextController;

  TextEditingController get passwordTextController;

  UnionStateNotifier<AuthState> get authState;

  UnionStateNotifier<bool> get agreeTerms;

  void changeObscure();

  void changeAgreeTerms();

  void recoveryPassword();

  void changeAuthState(AuthState state);

  Future<void> login({
    required String email,
    required String password,
  });
}

/// {@template auth_wm.class}
/// [WidgetModel] for [AuthScreen].
/// {@endtemplate}
final class AuthWM extends WidgetModel<AuthScreen, AuthModel> with ThemeWMMixin implements IAuthWM {
  /// {@macro auth_wm.class}
  AuthWM(super._model);

  @override
  void initWidgetModel() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: AppColors.darkGrey,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    super.initWidgetModel();
  }

  @override
  UnionStateNotifier<bool> get state => model.state;

  @override
  TextEditingController emailTextController = TextEditingController();

  @override
  TextEditingController passwordTextController = TextEditingController();

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    await model.login(
      email: email,
      password: password,
    );
  }

  @override
  UnionStateNotifier<bool> get isObscure => model.isObscure;

  @override
  void changeObscure() {
    model.changeObscure();
  }

  @override
  UnionStateNotifier<AuthState> get authState => model.authState;

  @override
  UnionStateNotifier<bool> get agreeTerms => model.agreeTerms;

  @override
  void changeAgreeTerms() {
    model.changeAgreeTerms();
  }

  @override
  void changeAuthState(AuthState state) {
    model.changeAuthState(state);
  }

  @override
  void recoveryPassword() {
    context.pushRoute(const RecoveryPasswordRoute());
  }
}
