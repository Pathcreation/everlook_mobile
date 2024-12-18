import 'package:everlook_mobile/source/imports.dart';

abstract interface class IJobsRepository {
  List<ActivityModel> activities = [];

  Future<List<ActivityModel>?> getActivities({
    int? parent,
  });
}
