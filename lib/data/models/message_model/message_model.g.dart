// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      chat: (json['chat'] as num?)?.toInt(),
      f: (json['f'] as num?)?.toInt(),
      t: (json['t'] as num?)?.toInt(),
      text: json['text'] as String?,
      offerDateF: json['offer_date_f'] == null
          ? null
          : DateTime.parse(json['offer_date_f'] as String),
      offerDateT: json['offer_date_t'] == null
          ? null
          : DateTime.parse(json['offer_date_t'] as String),
      offerPriceF: (json['offer_price_f'] as num?)?.toInt(),
      offerPriceT: (json['offer_price_t'] as num?)?.toInt(),
      offerStatus: json['offer_status'] as String?,
      isOfferRequest: json['is_offer_request'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      readedAt: json['readed_at'] == null
          ? null
          : DateTime.parse(json['readed_at'] as String),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat': instance.chat,
      'f': instance.f,
      't': instance.t,
      'text': instance.text,
      'offer_date_f': instance.offerDateF?.toIso8601String(),
      'offer_date_t': instance.offerDateT?.toIso8601String(),
      'offer_price_f': instance.offerPriceF,
      'offer_price_t': instance.offerPriceT,
      'offer_status': instance.offerStatus,
      'is_offer_request': instance.isOfferRequest,
      'created_at': instance.createdAt?.toIso8601String(),
      'readed_at': instance.readedAt?.toIso8601String(),
    };
