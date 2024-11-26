import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/activities/domain/repositories/i_activities_repository.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';

/// {@template activities_model.class}
/// [ElementaryModel] for [ActivitiesScreen].
/// {@endtemplate}
final class ActivitiesModel extends ElementaryModel {
  // ignore: unused_field
  final IActivitiesRepository _repository;

  /// {@macro activities_model.class}
  ActivitiesModel({
    required IActivitiesRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
