// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      viewsMonth: (json['profile_views_per_month'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      isSuperUser: json['is_superuser'] as bool?,
      email: json['email'] as String?,
      isStaff: json['is_staff'] as bool?,
      isActive: json['is_active'] as bool?,
      deleted: json['deleted'] as bool?,
      dateJoined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      deviceToken: json['device_token'] as String?,
      platform: json['platform'] as String?,
      avatar: json['avatar'] as String?,
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      regDate: json['reg_date'] == null
          ? null
          : DateTime.parse(json['reg_date'] as String),
      lastActivity: json['last_activity'] == null
          ? null
          : DateTime.parse(json['last_activity'] as String),
      address: json['address'] as String?,
      location: json['location'] as String?,
      notificationTypes: (json['notification_types'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      notificationChat: json['notification_chat'] as bool?,
      notificationJob: json['notification_job'] as bool?,
      notificationReview: json['notification_review'] as bool?,
      notificationNews: json['notification_news'] as bool?,
      notificationOffers: json['notification_offers'] as bool?,
      allowCallsFrom: json['allow_calls_from'] as String?,
      allowCallsFromAmpm: json['allow_calls_from_ampm'] as String?,
      allowCallsTo: json['allow_calls_to'] as String?,
      allowCallsToAmpm: json['allow_calls_to_ampm'] as String?,
      callsFormat24: json['calls_format_24'] as bool?,
      personalId: json['personal_id'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      userType: json['user_type'] as String?,
      isVerified: json['is_verified'] as bool?,
      licenseNumber: json['license_number'] as String?,
      licenceExp: json['licence_exp'] == null
          ? null
          : DateTime.parse(json['licence_exp'] as String),
      licenceFile: json['licence_file'] as String?,
      licenseUploaded: json['license_uploaded'] == null
          ? null
          : DateTime.parse(json['license_uploaded'] as String),
      licenseApproved: json['license_approved'] as bool?,
      passportFile: json['passport_file'] as String?,
      emergencyResponse: json['emergency_response'] as bool?,
      workingDays: (json['working_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nativeLanguage: (json['native_language'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      measuring: json['measuring'] as String?,
      color: json['color'] as String?,
      telegramId: json['telegram_id'] as String?,
      workAs: json['work_as'] as String?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviews_count': instance.reviewsCount,
      'profile_views_per_month': instance.viewsMonth,
      'rating': instance.rating,
      'last_login': instance.lastLogin?.toIso8601String(),
      'is_superuser': instance.isSuperUser,
      'email': instance.email,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'date_joined': instance.dateJoined?.toIso8601String(),
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'device_token': instance.deviceToken,
      'platform': instance.platform,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'phone_verified': instance.phoneVerified,
      'reg_date': instance.regDate?.toIso8601String(),
      'last_activity': instance.lastActivity?.toIso8601String(),
      'address': instance.address,
      'location': instance.location,
      'notification_types': instance.notificationTypes,
      'notification_chat': instance.notificationChat,
      'notification_job': instance.notificationJob,
      'notification_review': instance.notificationReview,
      'notification_news': instance.notificationNews,
      'notification_offers': instance.notificationOffers,
      'allow_calls_from': instance.allowCallsFrom,
      'allow_calls_from_ampm': instance.allowCallsFromAmpm,
      'allow_calls_to': instance.allowCallsTo,
      'allow_calls_to_ampm': instance.allowCallsToAmpm,
      'calls_format_24': instance.callsFormat24,
      'personal_id': instance.personalId,
      'user_id': instance.userId,
      'user_type': instance.userType,
      'is_verified': instance.isVerified,
      'license_number': instance.licenseNumber,
      'licence_exp': instance.licenceExp?.toIso8601String(),
      'licence_file': instance.licenceFile,
      'license_uploaded': instance.licenseUploaded?.toIso8601String(),
      'license_approved': instance.licenseApproved,
      'passport_file': instance.passportFile,
      'emergency_response': instance.emergencyResponse,
      'working_days': instance.workingDays,
      'native_language': instance.nativeLanguage,
      'measuring': instance.measuring,
      'color': instance.color,
      'telegram_id': instance.telegramId,
      'work_as': instance.workAs,
      'groups': instance.groups,
    };
