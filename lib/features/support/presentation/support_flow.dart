import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/support/data/repositories/support_repository.dart';
import 'package:everlook_mobile/features/support/di/support_scope.dart';
import 'package:everlook_mobile/features/support/presentation/screens/support/support_screen.dart';

/// {@template support_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class SupportFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro support_flow.class}
  const SupportFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = SupportRepository();

    return DiScope<ISupportScope>(
      factory: (context) => SupportScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SupportScreen();
  }
}
