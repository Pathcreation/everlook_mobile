import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi()
abstract class ProfileService {
  factory ProfileService(Dio dio, {String baseUrl}) = _ProfileService;

  @POST(Endpoints.login)
  Future<AuthTokenPair?> login({
    @Part() required String email,
    @Part() required String password,
    @Part() String? name,
  });

  @POST(Endpoints.logout)
  Future<void> logout({
    @Part(name: 'device_token') required String deviceToken,
  });

  @POST(Endpoints.registerContractor)
  Future<bool> registerContractor({
    @Part() required String email,
    @Part() required String password,
    @Part() required String name,
    @Part() required String license,
  });

  @POST('${Endpoints.profile}recovery/')
  Future<Object?> recoveryPassword({
    @Part() required String email,
  });

  @GET(Endpoints.profile)
  Future<UserModel?> getCurrentUser();

  @PUT(Endpoints.profile)
  Future<UserModel?> updateUser({
    @Body() required UserModel user,
  });

  @POST('${Endpoints.profile}avatar')
  Future<AvatarModel?> updateAvatar({
    @Part() required File avatar,
  });

  @DELETE('${Endpoints.profile}avatar')
  Future<bool> deleteAvatar();

  @GET(Endpoints.choices)
  Future<Object?> getLibraries();

  @GET('${Endpoints.profile}activities/')
  Future<Object?> getUserActivities({
    @Query('user') required int userId,
  });

  @POST('${Endpoints.profile}activities/')
  Future<Object?> addActivities({
    @Field('activities') required List<Map<String, dynamic>> activities,
  });

  @PUT('${Endpoints.profile}activities/')
  Future<Object?> updateActivities({
    @Field('activities') required List<Map<String, dynamic>> activities,
  });

  @DELETE('${Endpoints.profile}activities/{id}/')
  Future<Object?> deleteActivity({
    @Path('id') required int id,
  });

  @GET('${Endpoints.profile}portfolio/')
  Future<PortfolioModel?> getPortfolio();

  @POST('${Endpoints.profile}portfolio/')
  Future<Object?> addPhoto({
    @Part() required File image,
  });

  @POST('${Endpoints.profile}portfolio/')
  Future<Object?> addVideo({
    @Part() required String url,
  });

  @DELETE('${Endpoints.profile}portfolio/image/{id}/')
  Future<Object?> deleteImage({
    @Path('id') required int id,
  });

  @DELETE('${Endpoints.profile}portfolio/video/{id}/')
  Future<Object?> deleteVideo({
    @Path('id') required int id,
  });

  @POST('${Endpoints.profile}portfolio/textblock/')
  Future<Object?> addTextBlock({
    @Field('textblocks') required List<Map<String, dynamic>> textblocks,
  });

  @PUT('${Endpoints.profile}portfolio/textblock/')
  Future<List<ItemModel>?> updateTextBlock({
    @Field('textblocks') required List<Map<String, dynamic>> textblocks,
  });

  @POST('${Endpoints.profile}verifyphone/')
  Future<Object?> verifyPhone({
    @Field('phone') required String phone,
    @Field('action') required String action,
    @Field('code') String? code,
  });

  @POST('${Endpoints.license}upload/')
  Future<Object?> licenseFileUpload({
    @Part(name: 'licence_file') required File licenceFile,
    @Part(name: 'passport_file') required File passportFile,
  });
}
