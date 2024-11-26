import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/offer_request/domain/repositories/i_offer_request_repository.dart';
import 'package:everlook_mobile/features/offer_request/presentation/screens/offer_request/offer_request_screen.dart';

/// {@template offer_request_model.class}
/// [ElementaryModel] for [OfferRequestScreen].
/// {@endtemplate}
final class OfferRequestModel extends ElementaryModel {
  // ignore: unused_field
  final IOfferRequestRepository _repository;

  /// {@macro offer_request_model.class}
  OfferRequestModel({
    required IOfferRequestRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
