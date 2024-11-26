import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/reviews/presentation/screens/reviews/reviews_wm.dart';

/// {@template reviews_screen.class}
/// ReviewsScreen.
/// {@endtemplate}
class ReviewsScreen extends ElementaryWidget<IReviewsWM> {
  /// {@macro reviews_screen.class}
  const ReviewsScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultReviewsWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IReviewsWM wm) {
    return const Placeholder();
  }
}
