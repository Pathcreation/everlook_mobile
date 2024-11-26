import 'package:everlook_mobile/features/offers/data/repositories/offers_repository.dart';
import 'package:everlook_mobile/features/offers/domain/repositories/i_offers_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template offers_scope.class}
/// Implementation of [IOffersScope].
/// {@endtemplate}
final class OffersScope extends DisposableObject implements IOffersScope {
  @override
  late final IOffersRepository repository;

  /// Factory constructor for [IOffersScope].
  factory OffersScope.create() {
    return OffersScope(const OffersRepository());
  }

  /// {@macro offers_scope.class}
  OffersScope(this.repository);
}

/// Scope dependencies of the Offers feature.
abstract interface class IOffersScope implements IDisposableObject {
  /// OffersRepository.
  IOffersRepository get repository;
}
