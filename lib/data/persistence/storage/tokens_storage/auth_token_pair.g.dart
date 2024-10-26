// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthTokenPair _$AuthTokenPairFromJson(Map<String, dynamic> json) =>
    AuthTokenPair(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$AuthTokenPairToJson(AuthTokenPair instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
