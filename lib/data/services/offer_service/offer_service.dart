import 'package:everlook_mobile/data/models/offer_model/offer_model.dart';
import 'package:everlook_mobile/source/endpoints.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:retrofit/retrofit.dart';

part 'offer_service.g.dart';

@RestApi()
abstract class OfferService {
  factory OfferService(Dio dio, {String baseUrl}) = _OfferService;


  @GET('${Endpoints.offer}/{jobId}')
  Future<List<OfferModel>?> getOffers({
    @Path() required String jobId,
  });

  @PATCH('${Endpoints.offer}/{jobId}')
  Future<bool> editOffer({
    @Field("message_id") required String messageId,
    @Field("offer_price_f") required String offerPriceF,
    @Field("offer_status") required String offerStatus,
  });


}
