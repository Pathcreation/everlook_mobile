import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/favorites/data/repositories/favorites_repository.dart';
import 'package:everlook_mobile/features/favorites/di/favorites_scope.dart';
import 'package:everlook_mobile/features/favorites/presentation/screens/favorites/favorites_screen.dart';

/// {@template favorites_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class FavoritesFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro favorites_flow.class}
  const FavoritesFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = FavoritesRepository();

    return DiScope<IFavoritesScope>(
      factory: (context) => FavoritesScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const FavoritesScreen();
  }
}
