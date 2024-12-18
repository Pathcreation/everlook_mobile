// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarModelImpl _$$AvatarModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarModelImpl(
      avatar: json['avatar'] as String?,
      thumbnail300: json['thumbnail_300'] as String?,
      thumbnailBig: json['thumbnail_big'] as String?,
      thumbnailSmall: json['thumbnail_small'] as String?,
      avatarLetters: json['avatar_letters'] as String?,
    );

Map<String, dynamic> _$$AvatarModelImplToJson(_$AvatarModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'thumbnail_300': instance.thumbnail300,
      'thumbnail_big': instance.thumbnailBig,
      'thumbnail_small': instance.thumbnailSmall,
      'avatar_letters': instance.avatarLetters,
    };
