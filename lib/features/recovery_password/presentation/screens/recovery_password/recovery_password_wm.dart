import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/app/di/app_scope.dart';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/recovery_password/di/recovery_password_scope.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/screens/recovery_password/recovery_password_model.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/screens/recovery_password/recovery_password_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [RecoveryPasswordWM].
RecoveryPasswordWM defaultRecoveryPasswordWMFactory(BuildContext context) {
  final scope = context.read<IAppScope>();

  return RecoveryPasswordWM(RecoveryPasswordModel(appScope: scope));
}

/// Interface for [RecoveryPasswordWM].
abstract interface class IRecoveryPasswordWM with ThemeIModelMixin implements IWidgetModel {
  UnionStateNotifier<RecoveryPasswordState> get state;

  TextEditingController get emailTextController;

  bool get isAuthorized;

  void sendRecoveryLink();

  void backToLogin();
}

/// {@template recovery_password_wm.class}
/// [WidgetModel] for [RecoveryPasswordScreen].
/// {@endtemplate}
final class RecoveryPasswordWM extends WidgetModel<RecoveryPasswordScreen, RecoveryPasswordModel> with ThemeWMMixin implements IRecoveryPasswordWM {
  /// {@macro recovery_password_wm.class}
  RecoveryPasswordWM(super._model);

  @override
  UnionStateNotifier<RecoveryPasswordState> get state => model.state;

  @override
  TextEditingController get emailTextController => model.emailTextController;

  @override
  void sendRecoveryLink() async {
    await model.sendRecoveryLink().then((value) {
      if (value) {
        showMessage(
          message: 'The code to change the password has been sent to the specified email address',
          type: PageState.success,
        );
        context.pushRoute(const AuthRoute());
      } else {
        showMessage(
          message: 'Ooops!!!',
          type: PageState.success,
        );
      }
    });
  }

  @override
  bool get isAuthorized => model.isAuthorized;

  @override
  void backToLogin() {
    context.pushRoute(const AuthRoute());
  }
}
