import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/profile/di/profile_scope.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_screen.dart';

/// {@template profile_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class ProfileFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro profile_flow.class}
  const ProfileFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return DiScope<IProfileScope>(
      factory: (context) => ProfileScope(appScope),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
