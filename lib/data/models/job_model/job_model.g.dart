// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      contractor: (json['contractor'] as num?)?.toInt(),
      structure: (json['structure'] as num?)?.toInt(),
      title: json['title'] as String?,
      phone: json['phone'] as String?,
      allowCallsFrom: json['allow_calls_from'] as String?,
      allowCallsTo: json['allow_calls_to'] as String?,
      nativeLanguage: json['native_language'] as String?,
      desiredPrice: (json['desired_price'] as num?)?.toInt(),
      address: json['address'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String?,
      status: json['status'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$JobModelImplToJson(_$JobModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'contractor': instance.contractor,
      'structure': instance.structure,
      'title': instance.title,
      'phone': instance.phone,
      'allow_calls_from': instance.allowCallsFrom,
      'allow_calls_to': instance.allowCallsTo,
      'native_language': instance.nativeLanguage,
      'desired_price': instance.desiredPrice,
      'address': instance.address,
      'location': instance.location,
      'description': instance.description,
      'status': instance.status,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
