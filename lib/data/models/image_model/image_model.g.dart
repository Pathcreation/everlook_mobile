// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      preview: json['preview'] as String?,
      bigPreview: json['big_preview'] as String?,
      job: (json['job'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preview': instance.preview,
      'big_preview': instance.bigPreview,
      'job': instance.job,
    };
