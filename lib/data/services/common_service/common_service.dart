import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:retrofit/retrofit.dart';

part 'common_service.g.dart';

@RestApi()
abstract class CommonService {
  factory CommonService(Dio dio, {String baseUrl}) = _CommonService;

  @GET('${Endpoints.terms}/emergency')
  Future<String?> getTermEmergency();
}
