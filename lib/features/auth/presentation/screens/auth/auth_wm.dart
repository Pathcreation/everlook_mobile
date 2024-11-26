import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
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

  TextEditingController get emailTextController;

  TextEditingController get passwordTextController;

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
}
