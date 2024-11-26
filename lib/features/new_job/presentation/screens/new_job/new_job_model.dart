import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/new_job/domain/repositories/i_new_job_repository.dart';
import 'package:everlook_mobile/features/new_job/presentation/screens/new_job/new_job_screen.dart';

/// {@template new_job_model.class}
/// [ElementaryModel] for [NewJobScreen].
/// {@endtemplate}
final class NewJobModel extends ElementaryModel {
  // ignore: unused_field
  final INewJobRepository _repository;

  /// {@macro new_job_model.class}
  NewJobModel({
    required INewJobRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
