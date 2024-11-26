import 'package:everlook_mobile/features/my_offer/data/repositories/my_offer_repository.dart';
import 'package:everlook_mobile/features/my_offer/domain/repositories/i_my_offer_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template my_offer_scope.class}
/// Implementation of [IMyOfferScope].
/// {@endtemplate}
final class MyOfferScope extends DisposableObject implements IMyOfferScope {
  @override
  late final IMyOfferRepository repository;

  /// Factory constructor for [IMyOfferScope].
  factory MyOfferScope.create() {
    return MyOfferScope(const MyOfferRepository());
  }

  /// {@macro my_offer_scope.class}
  MyOfferScope(this.repository);
}

/// Scope dependencies of the MyOffer feature.
abstract interface class IMyOfferScope implements IDisposableObject {
  /// MyOfferRepository.
  IMyOfferRepository get repository;
}
