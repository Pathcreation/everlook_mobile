import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/rejected_offers/data/repositories/rejected_offers_repository.dart';
import 'package:everlook_mobile/features/rejected_offers/di/rejected_offers_scope.dart';
import 'package:everlook_mobile/features/rejected_offers/presentation/screens/rejected_offers/rejected_offers_screen.dart';

/// {@template rejected_offers_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class RejectedOffersFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro rejected_offers_flow.class}
  const RejectedOffersFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = RejectedOffersRepository();

    return DiScope<IRejectedOffersScope>(
      factory: (context) => RejectedOffersScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const RejectedOffersScreen();
  }
}
