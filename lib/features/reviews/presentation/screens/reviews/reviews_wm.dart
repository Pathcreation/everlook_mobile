import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/reviews/di/reviews_scope.dart';
import 'package:everlook_mobile/features/reviews/presentation/screens/reviews/reviews_model.dart';
import 'package:everlook_mobile/features/reviews/presentation/screens/reviews/reviews_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [ReviewsWM].
ReviewsWM defaultReviewsWMFactory(BuildContext context) {
  final scope = context.read<IReviewsScope>();

  return ReviewsWM(ReviewsModel(repository: scope.repository));
}

/// Interface for [ReviewsWM].
abstract interface class IReviewsWM  implements IWidgetModel {}

/// {@template reviews_wm.class}
/// [WidgetModel] for [ReviewsScreen].
/// {@endtemplate}
final class ReviewsWM extends WidgetModel<ReviewsScreen, ReviewsModel>  implements IReviewsWM {

  /// {@macro reviews_wm.class}
  ReviewsWM(super._model);
}
