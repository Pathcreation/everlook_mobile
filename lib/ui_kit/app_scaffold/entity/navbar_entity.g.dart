// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navbar_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavbarEntityImpl _$$NavbarEntityImplFromJson(Map<String, dynamic> json) =>
    _$NavbarEntityImpl(
      icons: $enumDecodeNullable(_$IconsTypeEnumMap, json['icons']),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$NavbarEntityImplToJson(_$NavbarEntityImpl instance) =>
    <String, dynamic>{
      'icons': _$IconsTypeEnumMap[instance.icons],
      'label': instance.label,
    };

const _$IconsTypeEnumMap = {
  IconsType.home: 'home',
  IconsType.discussions: 'discussions',
  IconsType.add: 'add',
  IconsType.messages: 'messages',
  IconsType.profile: 'profile',
};
