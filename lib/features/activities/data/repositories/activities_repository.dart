import 'package:dio/dio.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/failure.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/request_operation.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/result.dart';
import 'package:everlook_mobile/data/i_repositories/i_jobs_repository.dart';
import 'package:everlook_mobile/features/activities/data/converters/activity_converter.dart';
import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/features/activities/domain/repositories/i_activities_repository.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template feature_example_repository.class}
/// Implementation of [IFeatureExampleRepository].
/// {@endtemplate}
final class ActivitiesRepository implements IActivitiesRepository {
  final IJobsRepository _jobsRepository;
  final IProfileRepository _profileRepository;
  final IActivityEntityConverter _activityEntityConverter;
  final IAddActivityModelConverter _addActivityModelConverter;
  final IUpdateActivityModelConverter _updateActivityModelConverter;

  /// {@macro feature_example_repository.class}
  ActivitiesRepository({
    required IJobsRepository jobsRepository,
    required IProfileRepository profileRepository,
    required IActivityEntityConverter activitiesEntityConverter,
    required IAddActivityModelConverter addActivityModelConverter,
    required IUpdateActivityModelConverter updateActivityModelConverter,
  })  : _jobsRepository = jobsRepository,
        _profileRepository = profileRepository,
        _activityEntityConverter = activitiesEntityConverter,
        _addActivityModelConverter = addActivityModelConverter,
        _updateActivityModelConverter = updateActivityModelConverter,
        activities = jobsRepository.activities.map((e) {
          return activitiesEntityConverter.convert(e);
        }).toList();

  @override
  List<ActivityEntity> activities = [];

  @override
  RequestOperation<List<ActivityEntity>> getActivities({
    int? parent,
  }) async {
    try {
      final result = await _jobsRepository.getActivities(
        parent: parent,
      );
      final list = _activityEntityConverter.convertMultiple(result ?? []).toList();
      return Result.ok(list);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  RequestOperation<List<ActivityEntity>> getUserActivities() async {
    try {
      final result = await _profileRepository.getUserActivities(
        userId: _profileRepository.currentUser!.id!,
      );
      final list = _activityEntityConverter.convertMultiple(result ?? []).toList();
      return Result.ok(list ?? []);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  RequestOperation<bool> updateActivities({
    required List<ActivityEntity> activities,
  }) async {
    try {
      final activityList = activities.map((e) {
        final item = _updateActivityModelConverter.convert(e);
        return item;
      }).toList();
      final result = await _profileRepository.updateActivities(
        activities: activityList,
      );
      return Result.ok(result);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  RequestOperation<bool> addActivities({required List<ActivityEntity> activities}) async {
    try {
      List<ActivityModel> activityList = [];
      for (var activity in activities) {
        final item = _addActivityModelConverter.convert(activity);
        activityList.add(item);
      }

      final result = await _profileRepository.addActivities(
        activities: activityList,
      );
      return Result.ok(result);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  RequestOperation<bool> deleteActivity({required int id}) async {
    try {
      final result = await _profileRepository.deleteActivity(id: id);
      return Result.ok(result);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }
}
