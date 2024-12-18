import 'package:everlook_mobile/source/imports.dart';

class JobsRepository implements IJobsRepository {
  final JobsService _service;

  JobsRepository({
    required TokenStorageImpl tokenStorage,
    required JobsService service,
  }) : _service = service;

  @override
  Future<List<ActivityModel>?> getActivities({
    int? parent,
    String? lang,
  }) async {
    final response = await _service.getActivities(
      parent: parent,
      lang: lang,
    );
    activities = response ?? [];
    return response;
  }

  @override
  List<ActivityModel> activities = [];
}
