import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/reviews/data/repositories/reviews_repository.dart';
import 'package:everlook_mobile/features/reviews/di/reviews_scope.dart';
import 'package:everlook_mobile/features/reviews/presentation/screens/reviews/reviews_screen.dart';

/// {@template reviews_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class ReviewsFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro reviews_flow.class}
  const ReviewsFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = ReviewsRepository();

    return DiScope<IReviewsScope>(
      factory: (context) => ReviewsScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ReviewsScreen();
  }
}
