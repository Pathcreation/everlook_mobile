import 'package:everlook_mobile/features/favorites/data/repositories/favorites_repository.dart';
import 'package:everlook_mobile/features/favorites/domain/repositories/i_favorites_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template favorites_scope.class}
/// Implementation of [IFavoritesScope].
/// {@endtemplate}
final class FavoritesScope extends DisposableObject implements IFavoritesScope {
  @override
  late final IFavoritesRepository repository;

  /// Factory constructor for [IFavoritesScope].
  factory FavoritesScope.create() {
    return FavoritesScope(const FavoritesRepository());
  }

  /// {@macro favorites_scope.class}
  FavoritesScope(this.repository);
}

/// Scope dependencies of the Favorites feature.
abstract interface class IFavoritesScope implements IDisposableObject {
  /// FavoritesRepository.
  IFavoritesRepository get repository;
}
