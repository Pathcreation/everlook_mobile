import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/activities/data/repositories/activities_repository.dart';
import 'package:everlook_mobile/features/activities/di/activities_scope.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';

/// {@template activities_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class ActivitiesFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro activities_flow.class}
  const ActivitiesFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = ActivitiesRepository();

    return DiScope<IActivitiesScope>(
      factory: (context) => ActivitiesScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ActivitiesScreen();
  }
}
