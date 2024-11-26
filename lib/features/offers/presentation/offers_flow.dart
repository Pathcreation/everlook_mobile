import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/offers/data/repositories/offers_repository.dart';
import 'package:everlook_mobile/features/offers/di/offers_scope.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_screen.dart';

/// {@template offers_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class OffersFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro offers_flow.class}
  const OffersFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = OffersRepository();

    return DiScope<IOffersScope>(
      factory: (context) => OffersScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const OffersScreen();
  }
}
