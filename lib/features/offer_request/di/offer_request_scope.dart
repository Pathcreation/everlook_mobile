import 'package:everlook_mobile/features/offer_request/data/repositories/offer_request_repository.dart';
import 'package:everlook_mobile/features/offer_request/domain/repositories/i_offer_request_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template offer_request_scope.class}
/// Implementation of [IOfferRequestScope].
/// {@endtemplate}
final class OfferRequestScope extends DisposableObject implements IOfferRequestScope {
  @override
  late final IOfferRequestRepository repository;

  /// Factory constructor for [IOfferRequestScope].
  factory OfferRequestScope.create() {
    return OfferRequestScope(const OfferRequestRepository());
  }

  /// {@macro offer_request_scope.class}
  OfferRequestScope(this.repository);
}

/// Scope dependencies of the OfferRequest feature.
abstract interface class IOfferRequestScope implements IDisposableObject {
  /// OfferRequestRepository.
  IOfferRequestRepository get repository;
}
