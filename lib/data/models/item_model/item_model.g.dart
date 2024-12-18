// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      id: (json['id'] as num?)?.toInt(),
      answer: json['answer'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      header: json['header'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'name': instance.name,
      'description': instance.description,
      'header': instance.header,
      'text': instance.text,
    };
