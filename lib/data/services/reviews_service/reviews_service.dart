import 'package:everlook_mobile/data/models/image_model/image_model.dart';
import 'package:everlook_mobile/data/models/review_model/review_model.dart';
import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:retrofit/retrofit.dart';

part 'reviews_service.g.dart';

@RestApi()
abstract class ReviewsService {
  factory ReviewsService(Dio dio, {String baseUrl}) = _ReviewsService;

  @POST('${Endpoints.reviews}/create')
  Future<ReviewModel?> createReview({
    @Body() required ReviewModel review,
  });

  @GET('${Endpoints.reviews}/{reviewId}')
  Future<ReviewModel?> getReview({
    @Path() required String reviewId,
  });

  @DELETE('${Endpoints.reviews}/{reviewId}')
  Future<bool> deleteReview({
    @Path() required String reviewId,
  });

  @POST('${Endpoints.reviews}/images/upload')
  @MultiPart()
  Future<ImageModel?> imagesUploadReview(
    @Part() String review, {
    @Part(contentType: 'application/json') File image,
  });

  @POST('${Endpoints.reviews}/images/{id}/delete}')
  Future<bool?> deleteImagesJob(
    @Path() String id,
  );
}
