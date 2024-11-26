import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/menu/data/repositories/menu_repository.dart';
import 'package:everlook_mobile/features/menu/di/menu_scope.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_screen.dart';

/// {@template menu_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class MenuFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro menu_flow.class}
  const MenuFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = MenuRepository();

    return DiScope<IMenuScope>(
      factory: (context) => MenuScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MenuScreen();
  }
}
