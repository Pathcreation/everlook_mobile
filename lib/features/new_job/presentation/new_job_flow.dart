import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/new_job/data/repositories/new_job_repository.dart';
import 'package:everlook_mobile/features/new_job/di/new_job_scope.dart';
import 'package:everlook_mobile/features/new_job/presentation/screens/new_job/new_job_screen.dart';

/// {@template new_job_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class NewJobFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro new_job_flow.class}
  const NewJobFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = NewJobRepository();

    return DiScope<INewJobScope>(
      factory: (context) => NewJobScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const NewJobScreen();
  }
}
