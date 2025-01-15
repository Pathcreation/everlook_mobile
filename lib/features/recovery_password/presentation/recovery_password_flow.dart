import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/navigation/app_scaffold.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/recovery_password/di/recovery_password_scope.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/screens/recovery_password/recovery_password_screen.dart';

/// {@template recovery_password_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class RecoveryPasswordFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro recovery_password_flow.class}
  const RecoveryPasswordFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final theme = Theme.of(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: theme.colorScheme.tertiary,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    final appScope = context.read<IAppScope>();

    return DiScope<IRecoveryPasswordScope>(
      factory: (context) => RecoveryPasswordScope(appScope),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RecoveryPasswordScreen(),
    );
  }
}
