import 'package:everlook_mobile/features/rejected_offers/data/repositories/rejected_offers_repository.dart';
import 'package:everlook_mobile/features/rejected_offers/domain/repositories/i_rejected_offers_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template rejected_offers_scope.class}
/// Implementation of [IRejectedOffersScope].
/// {@endtemplate}
final class RejectedOffersScope extends DisposableObject implements IRejectedOffersScope {
  @override
  late final IRejectedOffersRepository repository;

  /// Factory constructor for [IRejectedOffersScope].
  factory RejectedOffersScope.create() {
    return RejectedOffersScope(const RejectedOffersRepository());
  }

  /// {@macro rejected_offers_scope.class}
  RejectedOffersScope(this.repository);
}

/// Scope dependencies of the RejectedOffers feature.
abstract interface class IRejectedOffersScope implements IDisposableObject {
  /// RejectedOffersRepository.
  IRejectedOffersRepository get repository;
}
