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

  @POST(Endpoints.recoveryPassword)
  Future<bool> recoveryPassword({
    @Part() required String email,
  });

  @GET(Endpoints.profile)
  Future<UserModel?> getCurrentUser();

  @PUT(Endpoints.profile)
  Future<UserModel?> updateUser({
    @Body() required UserModel user,
  });

  @POST('${Endpoints.profile}/avatar')
  Future<bool> updateAvatar({
    @Part() required File avatar,
  });

  @DELETE('${Endpoints.profile}/avatar')
  Future<bool> deleteAvatar();
}
