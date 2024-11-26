import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/settings/presentation/screens/settings/settings_wm.dart';

/// {@template settings_screen.class}
/// SettingsScreen.
/// {@endtemplate}
class SettingsScreen extends ElementaryWidget<ISettingsWM> {
  /// {@macro settings_screen.class}
  const SettingsScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultSettingsWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(ISettingsWM wm) {
    return const Placeholder();
  }
}
