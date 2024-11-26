import 'package:everlook_mobile/data/models/message_model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    @JsonKey(name: "chat_id")
    int? chatId,
    @JsonKey(name: "job_id")
    int? jobId,
    List<MessageModel>? messages,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) => _$OfferModelFromJson(json);
}

