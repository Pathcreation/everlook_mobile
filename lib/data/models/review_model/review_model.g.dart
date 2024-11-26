// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      job: (json['job'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      star: (json['star'] as num?)?.toInt(),
      text: json['text'] as String?,
      answer: json['answer'] as String?,
      positiveTags: (json['positive_tags'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      negativeTags: (json['negative_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workPrice: json['work_price'] as String?,
      materialsPrice: json['materials_price'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'job': instance.job,
      'user': instance.user,
      'star': instance.star,
      'text': instance.text,
      'answer': instance.answer,
      'positive_tags': instance.positiveTags,
      'negative_tags': instance.negativeTags,
      'work_price': instance.workPrice,
      'materials_price': instance.materialsPrice,
      'images': instance.images,
    };
