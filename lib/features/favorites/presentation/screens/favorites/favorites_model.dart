import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/favorites/domain/repositories/i_favorites_repository.dart';
import 'package:everlook_mobile/features/favorites/presentation/screens/favorites/favorites_screen.dart';

/// {@template favorites_model.class}
/// [ElementaryModel] for [FavoritesScreen].
/// {@endtemplate}
final class FavoritesModel extends ElementaryModel {
  // ignore: unused_field
  final IFavoritesRepository _repository;

  /// {@macro favorites_model.class}
  FavoritesModel({
    required IFavoritesRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
