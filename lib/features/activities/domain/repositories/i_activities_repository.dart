import 'package:everlook_mobile/core/architecture/domain/entity/request_operation.dart';
import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';

/// Interface for [FeatureExampleRepository].
///
/// The repository is needed to demonstrate interaction with the api.
// ignore: one_member_abstracts
abstract interface class IActivitiesRepository {
  /// Request to get the current IP address.
  RequestOperation<List<ActivityEntity>> getActivities({
    int? parent,
  });

  RequestOperation<List<ActivityEntity>> getUserActivities();

  RequestOperation<bool> addActivities({
    required List<ActivityEntity> activities,
  });

  RequestOperation<bool> updateActivities({
    required List<ActivityEntity> activities,
  });

  RequestOperation<bool> deleteActivity({
    required int id,
  });

  List<ActivityEntity> activities = [];
}
