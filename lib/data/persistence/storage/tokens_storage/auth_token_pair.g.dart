// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthTokenPair _$AuthTokenPairFromJson(Map<String, dynamic> json) =>
    AuthTokenPair(
      token: json['token'] as String?,
      refresh: json['refresh'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
    );

Map<String, dynamic> _$AuthTokenPairToJson(AuthTokenPair instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh': instance.refresh,
      'firebaseToken': instance.firebaseToken,
    };
