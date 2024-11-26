import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/my_offer/data/repositories/my_offer_repository.dart';
import 'package:everlook_mobile/features/my_offer/di/my_offer_scope.dart';
import 'package:everlook_mobile/features/my_offer/presentation/screens/my_offer/my_offer_screen.dart';

/// {@template my_offer_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class MyOfferFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro my_offer_flow.class}
  const MyOfferFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = MyOfferRepository();

    return DiScope<IMyOfferScope>(
      factory: (context) => MyOfferScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MyOfferScreen();
  }
}
