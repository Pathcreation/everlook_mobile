import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/profile/di/profile_scope.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_model.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [ProfileWM].
ProfileWM defaultProfileWMFactory(BuildContext context) {
  final scope = context.read<IProfileScope>();

  return ProfileWM(ProfileModel(
    appScope: scope.appScope,
  ));
}

/// Interface for [ProfileWM].
abstract interface class IProfileWM with ThemeIModelMixin implements IWidgetModel {
  Future<void> logout();

  Future<void> getCurrentUser();

  void changeWorkAs(String value);

  UnionStateNotifier<UserModel?> get user;

  TextEditingController get licenseTextController;
}

/// {@template profile_wm.class}
/// [WidgetModel] for [ProfileScreen].
/// {@endtemplate}
final class ProfileWM extends WidgetModel<ProfileScreen, ProfileModel> with ThemeWMMixin implements IProfileWM {
  /// {@macro profile_wm.class}
  ProfileWM(super._model);

  @override
  UnionStateNotifier<UserModel?> get user => model.user;

  @override
  TextEditingController licenseTextController = TextEditingController();

  @override
  void initWidgetModel() {
    unawaited(model.getCurrentUser());
    super.initWidgetModel();
  }

  @override
  Future<void> logout() async {
    await model.logout();
  }

  @override
  Future<void> getCurrentUser() async {
    await model.getCurrentUser();
  }

  @override
  void changeWorkAs(String value) {
    model.changeWorkAs(value);
  }
}
