import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/navigation/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/home/data/repositories/home_repository.dart';
import 'package:everlook_mobile/features/home/di/home_scope.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_screen.dart';

/// {@template home_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class HomeFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro home_flow.class}
  const HomeFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = HomeRepository();

    return DiScope<IHomeScope>(
      factory: (context) => HomeScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: HomeScreen(),
    );
  }
}
