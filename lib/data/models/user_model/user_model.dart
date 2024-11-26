import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    @JsonKey(name: "profile_views_per_month") int? viewsMonth,
    double? rating,
    @JsonKey(name: "last_login") DateTime? lastLogin,
    @JsonKey(name: "is_superuser") bool? isSuperUser,
    String? email,
    @JsonKey(name: "is_staff") bool? isStaff,
    @JsonKey(name: "is_active") bool? isActive,
    bool? deleted,
    @JsonKey(name: "date_joined") DateTime? dateJoined,
    String? name,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "device_token") String? deviceToken,
    String? platform,
    String? avatar,
    String? phone,
    @JsonKey(name: "phone_verified") bool? phoneVerified,
    @JsonKey(name: "reg_date") DateTime? regDate,
    @JsonKey(name: "last_activity") DateTime? lastActivity,
    String? address,
    String? location,
    @JsonKey(name: "notification_types") List<int>? notificationTypes,
    @JsonKey(name: "notification_chat") bool? notificationChat,
    @JsonKey(name: "notification_job") bool? notificationJob,
    @JsonKey(name: "notification_review") bool? notificationReview,
    @JsonKey(name: "notification_news") bool? notificationNews,
    @JsonKey(name: "notification_offers") bool? notificationOffers,
    @JsonKey(name: "allow_calls_from") String? allowCallsFrom,
    @JsonKey(name: "allow_calls_from_ampm") String? allowCallsFromAmpm,
    @JsonKey(name: "allow_calls_to") String? allowCallsTo,
    @JsonKey(name: "allow_calls_to_ampm") String? allowCallsToAmpm,
    @JsonKey(name: "calls_format_24") bool? callsFormat24,
    @JsonKey(name: "personal_id") String? personalId,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "user_type") String? userType,
    @JsonKey(name: "is_verified") bool? isVerified,
    @JsonKey(name: "license_number") String? licenseNumber,
    @JsonKey(name: "licence_exp") DateTime? licenceExp,
    @JsonKey(name: "licence_file") String? licenceFile,
    @JsonKey(name: "license_uploaded") DateTime? licenseUploaded,
    @JsonKey(name: "license_approved") bool? licenseApproved,
    @JsonKey(name: "passport_file") String? passportFile,
    @JsonKey(name: "emergency_response") bool? emergencyResponse,
    @JsonKey(name: "working_days") List<String>? workingDays,
    @JsonKey(name: "native_language") List<String>? nativeLanguage,
    String? measuring,
    String? color,
    @JsonKey(name: "telegram_id") String? telegramId,
    @JsonKey(name: "work_as") String? workAs,
    @JsonKey(name: "groups") List<String>? groups,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
