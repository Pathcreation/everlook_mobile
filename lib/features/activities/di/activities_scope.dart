import 'package:everlook_mobile/features/activities/data/repositories/activities_repository.dart';
import 'package:everlook_mobile/features/activities/domain/repositories/i_activities_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template activities_scope.class}
/// Implementation of [IActivitiesScope].
/// {@endtemplate}
final class ActivitiesScope extends DisposableObject implements IActivitiesScope {
  @override
  late final IActivitiesRepository repository;

  /// Factory constructor for [IActivitiesScope].
  factory ActivitiesScope.create() {
    return ActivitiesScope(const ActivitiesRepository());
  }

  /// {@macro activities_scope.class}
  ActivitiesScope(this.repository);
}

/// Scope dependencies of the Activities feature.
abstract interface class IActivitiesScope implements IDisposableObject {
  /// ActivitiesRepository.
  IActivitiesRepository get repository;
}
