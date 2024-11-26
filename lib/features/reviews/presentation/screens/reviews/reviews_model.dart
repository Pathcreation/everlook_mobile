import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/reviews/domain/repositories/i_reviews_repository.dart';
import 'package:everlook_mobile/features/reviews/presentation/screens/reviews/reviews_screen.dart';

/// {@template reviews_model.class}
/// [ElementaryModel] for [ReviewsScreen].
/// {@endtemplate}
final class ReviewsModel extends ElementaryModel {
  // ignore: unused_field
  final IReviewsRepository _repository;

  /// {@macro reviews_model.class}
  ReviewsModel({
    required IReviewsRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
