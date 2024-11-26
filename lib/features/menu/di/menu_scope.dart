import 'package:everlook_mobile/features/menu/data/repositories/menu_repository.dart';
import 'package:everlook_mobile/features/menu/domain/repositories/i_menu_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template menu_scope.class}
/// Implementation of [IMenuScope].
/// {@endtemplate}
final class MenuScope extends DisposableObject implements IMenuScope {
  @override
  late final IMenuRepository repository;

  /// Factory constructor for [IMenuScope].
  factory MenuScope.create() {
    return MenuScope(const MenuRepository());
  }

  /// {@macro menu_scope.class}
  MenuScope(this.repository);
}

/// Scope dependencies of the Menu feature.
abstract interface class IMenuScope implements IDisposableObject {
  /// MenuRepository.
  IMenuRepository get repository;
}
