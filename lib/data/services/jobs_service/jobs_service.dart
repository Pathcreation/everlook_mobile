import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/data/models/image_model/image_model.dart';
import 'package:everlook_mobile/data/models/job_model/job_model.dart';
import 'package:everlook_mobile/data/models/review_model/review_model.dart';
import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:retrofit/retrofit.dart';

part 'jobs_service.g.dart';

@RestApi()
abstract class JobsService {
  factory JobsService(Dio dio, {String baseUrl}) = _JobsService;

  @GET('${Endpoints.jobs}/{jobId}')
  Future<AuthTokenPair?> getJob(
    @Path('job_id') String jobId,
  );

  @PUT('${Endpoints.jobs}/{jobId}')
  Future<JobModel?> editJob(
    @Path('job_id') String jobId,
    @Body() JobModel job,
  );

  @POST(Endpoints.jobs)
  Future<JobModel?> createJob(
    @Body() JobModel job,
  );

  @DELETE('${Endpoints.jobs}/{jobId}')
  Future<bool> deleteJob(
    @Path('job_id') String jobId,
  );

  @GET(Endpoints.jobs)
  Future<List<JobModel>?> getJobs({
    @Query('user') required int userId,
    @Query('contractor') required int contractorId,
    @Query('active') required bool active,
    @Query('archived') required bool archived,
  });

  @GET('${Endpoints.jobs}/{id}/reviews')
  Future<List<ReviewModel>> jobReviews(
    @Path('id') String id,
  );

  @GET('${Endpoints.jobs}/{id}/images')
  Future<List<ImageModel>> jobImage(
    @Path('id') String id,
  );

  @POST('${Endpoints.jobs}/images/upload')
  @MultiPart()
  Future<ImageModel?> imagesUploadJob(
    @Part() String job, {
    @Part() required File image,
  });

  @POST('${Endpoints.jobs}/images/{id}/delete/s/create}')
  Future<bool?> deleteImagesJob(
    @Path() String id,
  );

  @GET('${Endpoints.jobs}/location')
  Future<List<JobModel>> getJobByLocation(
    @Query('distance') String distance,
    @Query('latitude') String latitude,
    @Query('longitude') String longitude,
  );
}
