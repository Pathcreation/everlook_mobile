// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      job: (json['job'] as num?)?.toInt(),
      image: json['image'] as String?,
      uuid: json['uuid'] as String?,
      temp: json['temp'] as bool?,
      thumb: json['thumb'] as String?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job': instance.job,
      'image': instance.image,
      'uuid': instance.uuid,
      'temp': instance.temp,
      'thumb': instance.thumb,
    };
