import 'package:everlook_mobile/features/new_job/data/repositories/new_job_repository.dart';
import 'package:everlook_mobile/features/new_job/domain/repositories/i_new_job_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template new_job_scope.class}
/// Implementation of [INewJobScope].
/// {@endtemplate}
final class NewJobScope extends DisposableObject implements INewJobScope {
  @override
  late final INewJobRepository repository;

  /// Factory constructor for [INewJobScope].
  factory NewJobScope.create() {
    return NewJobScope(const NewJobRepository());
  }

  /// {@macro new_job_scope.class}
  NewJobScope(this.repository);
}

/// Scope dependencies of the NewJob feature.
abstract interface class INewJobScope implements IDisposableObject {
  /// NewJobRepository.
  INewJobRepository get repository;
}
