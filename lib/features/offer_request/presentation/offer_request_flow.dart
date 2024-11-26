import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/offer_request/data/repositories/offer_request_repository.dart';
import 'package:everlook_mobile/features/offer_request/di/offer_request_scope.dart';
import 'package:everlook_mobile/features/offer_request/presentation/screens/offer_request/offer_request_screen.dart';

/// {@template offer_request_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class OfferRequestFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro offer_request_flow.class}
  const OfferRequestFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = OfferRequestRepository();

    return DiScope<IOfferRequestScope>(
      factory: (context) => OfferRequestScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const OfferRequestScreen();
  }
}
