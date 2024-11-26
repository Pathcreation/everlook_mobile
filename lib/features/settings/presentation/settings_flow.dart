import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/settings/data/repositories/settings_repository.dart';
import 'package:everlook_mobile/features/settings/di/settings_scope.dart';
import 'package:everlook_mobile/features/settings/presentation/screens/settings/settings_screen.dart';

/// {@template settings_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class SettingsFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro settings_flow.class}
  const SettingsFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = SettingsRepository();

    return DiScope<ISettingsScope>(
      factory: (context) => SettingsScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SettingsScreen();
  }
}
