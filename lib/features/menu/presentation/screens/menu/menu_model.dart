import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/menu/domain/repositories/i_menu_repository.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_screen.dart';

/// {@template menu_model.class}
/// [ElementaryModel] for [MenuScreen].
/// {@endtemplate}
final class MenuModel extends ElementaryModel {
  // ignore: unused_field
  final IMenuRepository _repository;

  /// {@macro menu_model.class}
  MenuModel({
    required IMenuRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
