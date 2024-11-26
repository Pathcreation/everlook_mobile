import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    int? id,
    int? chat,
    int? f,
    int? t,
    String? text,
    @JsonKey(name: "offer_date_f")
    DateTime? offerDateF,
    @JsonKey(name: "offer_date_t")
    DateTime? offerDateT,
    @JsonKey(name: "offer_price_f")
    int? offerPriceF,
    @JsonKey(name: "offer_price_t")
    int? offerPriceT,
    @JsonKey(name: "offer_status")
    String? offerStatus,
    @JsonKey(name: "is_offer_request")
    bool? isOfferRequest,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "readed_at")
    DateTime? readedAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}
