import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/rejected_offers/domain/repositories/i_rejected_offers_repository.dart';
import 'package:everlook_mobile/features/rejected_offers/presentation/screens/rejected_offers/rejected_offers_screen.dart';

/// {@template rejected_offers_model.class}
/// [ElementaryModel] for [RejectedOffersScreen].
/// {@endtemplate}
final class RejectedOffersModel extends ElementaryModel {
  // ignore: unused_field
  final IRejectedOffersRepository _repository;

  /// {@macro rejected_offers_model.class}
  RejectedOffersModel({
    required IRejectedOffersRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
