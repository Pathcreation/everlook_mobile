import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/settings/di/settings_scope.dart';
import 'package:everlook_mobile/features/settings/presentation/screens/settings/settings_model.dart';
import 'package:everlook_mobile/features/settings/presentation/screens/settings/settings_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [SettingsWM].
SettingsWM defaultSettingsWMFactory(BuildContext context) {
  final scope = context.read<ISettingsScope>();

  return SettingsWM(SettingsModel(repository: scope.repository));
}

/// Interface for [SettingsWM].
abstract interface class ISettingsWM  implements IWidgetModel {}

/// {@template settings_wm.class}
/// [WidgetModel] for [SettingsScreen].
/// {@endtemplate}
final class SettingsWM extends WidgetModel<SettingsScreen, SettingsModel>  implements ISettingsWM {

  /// {@macro settings_wm.class}
  SettingsWM(super._model);
}
