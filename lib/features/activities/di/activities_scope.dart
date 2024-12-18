import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';
import 'package:everlook_mobile/data/repositories/jobs_repository.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template activities_scope.class}
/// Implementation of [IActivitiesScope].
/// {@endtemplate}
final class ActivitiesScope extends DisposableObject implements IActivitiesScope {
  @override
  late final IAppScope appScope;

  /// {@macro activities_scope.class}
  ActivitiesScope(this.appScope);
}

/// Scope dependencies of the Activities feature.
abstract interface class IActivitiesScope implements IDisposableObject {
  /// ActivitiesRepository.
  IAppScope get appScope;
}
