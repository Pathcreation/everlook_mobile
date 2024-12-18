import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/notify/data/repositories/notify_repository.dart';
import 'package:everlook_mobile/features/notify/di/notify_scope.dart';
import 'package:everlook_mobile/features/notify/presentation/screens/notify/notify_screen.dart';

/// {@template notify_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class NotifyFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro notify_flow.class}
  const NotifyFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = NotifyRepository();

    return DiScope<INotifyScope>(
      factory: (context) => NotifyScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const NotifyScreen();
  }
}
