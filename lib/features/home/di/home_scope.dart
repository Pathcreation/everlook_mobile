import 'package:everlook_mobile/features/home/data/repositories/home_repository.dart';
import 'package:everlook_mobile/features/home/domain/repositories/i_home_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template home_scope.class}
/// Implementation of [IHomeScope].
/// {@endtemplate}
final class HomeScope extends DisposableObject implements IHomeScope {
  @override
  late final IHomeRepository repository;

  /// Factory constructor for [IHomeScope].
  factory HomeScope.create() {
    return HomeScope(const HomeRepository());
  }

  /// {@macro home_scope.class}
  HomeScope(this.repository);
}

/// Scope dependencies of the Home feature.
abstract interface class IHomeScope implements IDisposableObject {
  /// HomeRepository.
  IHomeRepository get repository;
}
