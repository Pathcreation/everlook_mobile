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

  @POST(Endpoints.registerContractor)
  Future<AuthTokenPair?> registerContractor({
    @Part() required String email,
    @Part() required String password,
    @Part() required String name,
    @Part() required String license,
  });
}
