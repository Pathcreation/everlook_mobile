import 'package:everlook_mobile/features/reviews/data/repositories/reviews_repository.dart';
import 'package:everlook_mobile/features/reviews/domain/repositories/i_reviews_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template reviews_scope.class}
/// Implementation of [IReviewsScope].
/// {@endtemplate}
final class ReviewsScope extends DisposableObject implements IReviewsScope {
  @override
  late final IReviewsRepository repository;

  /// Factory constructor for [IReviewsScope].
  factory ReviewsScope.create() {
    return ReviewsScope(const ReviewsRepository());
  }

  /// {@macro reviews_scope.class}
  ReviewsScope(this.repository);
}

/// Scope dependencies of the Reviews feature.
abstract interface class IReviewsScope implements IDisposableObject {
  /// ReviewsRepository.
  IReviewsRepository get repository;
}
