// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityModelImpl _$$ActivityModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      structureId: (json['structure_id'] as num?)?.toInt(),
      childCount: (json['child_count'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      icon: json['icon'] as String?,
      slug: json['slug'] as String?,
      level: (json['level'] as num?)?.toInt(),
      parent: (json['parent'] as num?)?.toInt(),
      from: (json['f'] as num?)?.toInt(),
      to: (json['t'] as num?)?.toInt(),
      perSq: json['per_sq'] as bool?,
      emergency: json['emergency'] as bool?,
    );

Map<String, dynamic> _$$ActivityModelImplToJson(_$ActivityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'structure_id': instance.structureId,
      'child_count': instance.childCount,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'icon': instance.icon,
      'slug': instance.slug,
      'level': instance.level,
      'parent': instance.parent,
      'f': instance.from,
      't': instance.to,
      'per_sq': instance.perSq,
      'emergency': instance.emergency,
    };
