// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_views_per_month")
  int? get viewsMonth => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "last_login")
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "is_superuser")
  bool? get isSuperUser => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "is_staff")
  bool? get isStaff => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  @JsonKey(name: "date_joined")
  DateTime? get dateJoined => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "device_token")
  String? get deviceToken => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_verified")
  bool? get phoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "reg_date")
  DateTime? get regDate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_activity")
  DateTime? get lastActivity => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_types")
  List<int>? get notificationTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_chat")
  bool? get notificationChat => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_job")
  bool? get notificationJob => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_review")
  bool? get notificationReview => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_news")
  bool? get notificationNews => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_offers")
  bool? get notificationOffers => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_from")
  String? get allowCallsFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_from_ampm")
  String? get allowCallsFromAmpm => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_to")
  String? get allowCallsTo => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_to_ampm")
  String? get allowCallsToAmpm => throw _privateConstructorUsedError;
  @JsonKey(name: "calls_format_24")
  bool? get callsFormat24 => throw _privateConstructorUsedError;
  @JsonKey(name: "personal_id")
  String? get personalId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_type")
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "license_number")
  String? get licenseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "licence_exp")
  DateTime? get licenceExp => throw _privateConstructorUsedError;
  @JsonKey(name: "licence_file")
  String? get licenceFile => throw _privateConstructorUsedError;
  @JsonKey(name: "license_uploaded")
  DateTime? get licenseUploaded => throw _privateConstructorUsedError;
  @JsonKey(name: "license_approved")
  bool? get licenseApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_file")
  String? get passportFile => throw _privateConstructorUsedError;
  @JsonKey(name: "emergency_response")
  bool? get emergencyResponse => throw _privateConstructorUsedError;
  @JsonKey(name: "working_days")
  List<String>? get workingDays => throw _privateConstructorUsedError;
  @JsonKey(name: "native_language")
  List<String>? get nativeLanguage => throw _privateConstructorUsedError;
  String? get measuring => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "telegram_id")
  String? get telegramId => throw _privateConstructorUsedError;
  @JsonKey(name: "work_as")
  String? get workAs => throw _privateConstructorUsedError;
  @JsonKey(name: "groups")
  List<String>? get groups => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: "groups") List<String>? groups});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reviewsCount = freezed,
    Object? viewsMonth = freezed,
    Object? rating = freezed,
    Object? lastLogin = freezed,
    Object? isSuperUser = freezed,
    Object? email = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? deleted = freezed,
    Object? dateJoined = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? phone = freezed,
    Object? phoneVerified = freezed,
    Object? regDate = freezed,
    Object? lastActivity = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? notificationTypes = freezed,
    Object? notificationChat = freezed,
    Object? notificationJob = freezed,
    Object? notificationReview = freezed,
    Object? notificationNews = freezed,
    Object? notificationOffers = freezed,
    Object? allowCallsFrom = freezed,
    Object? allowCallsFromAmpm = freezed,
    Object? allowCallsTo = freezed,
    Object? allowCallsToAmpm = freezed,
    Object? callsFormat24 = freezed,
    Object? personalId = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? isVerified = freezed,
    Object? licenseNumber = freezed,
    Object? licenceExp = freezed,
    Object? licenceFile = freezed,
    Object? licenseUploaded = freezed,
    Object? licenseApproved = freezed,
    Object? passportFile = freezed,
    Object? emergencyResponse = freezed,
    Object? workingDays = freezed,
    Object? nativeLanguage = freezed,
    Object? measuring = freezed,
    Object? color = freezed,
    Object? telegramId = freezed,
    Object? workAs = freezed,
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewsMonth: freezed == viewsMonth
          ? _value.viewsMonth
          : viewsMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuperUser: freezed == isSuperUser
          ? _value.isSuperUser
          : isSuperUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationTypes: freezed == notificationTypes
          ? _value.notificationTypes
          : notificationTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      notificationChat: freezed == notificationChat
          ? _value.notificationChat
          : notificationChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationJob: freezed == notificationJob
          ? _value.notificationJob
          : notificationJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationReview: freezed == notificationReview
          ? _value.notificationReview
          : notificationReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationNews: freezed == notificationNews
          ? _value.notificationNews
          : notificationNews // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationOffers: freezed == notificationOffers
          ? _value.notificationOffers
          : notificationOffers // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowCallsFrom: freezed == allowCallsFrom
          ? _value.allowCallsFrom
          : allowCallsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsFromAmpm: freezed == allowCallsFromAmpm
          ? _value.allowCallsFromAmpm
          : allowCallsFromAmpm // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsTo: freezed == allowCallsTo
          ? _value.allowCallsTo
          : allowCallsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsToAmpm: freezed == allowCallsToAmpm
          ? _value.allowCallsToAmpm
          : allowCallsToAmpm // ignore: cast_nullable_to_non_nullable
              as String?,
      callsFormat24: freezed == callsFormat24
          ? _value.callsFormat24
          : callsFormat24 // ignore: cast_nullable_to_non_nullable
              as bool?,
      personalId: freezed == personalId
          ? _value.personalId
          : personalId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      licenceExp: freezed == licenceExp
          ? _value.licenceExp
          : licenceExp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      licenceFile: freezed == licenceFile
          ? _value.licenceFile
          : licenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseUploaded: freezed == licenseUploaded
          ? _value.licenseUploaded
          : licenseUploaded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      licenseApproved: freezed == licenseApproved
          ? _value.licenseApproved
          : licenseApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      passportFile: freezed == passportFile
          ? _value.passportFile
          : passportFile // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyResponse: freezed == emergencyResponse
          ? _value.emergencyResponse
          : emergencyResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      measuring: freezed == measuring
          ? _value.measuring
          : measuring // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      workAs: freezed == workAs
          ? _value.workAs
          : workAs // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: "groups") List<String>? groups});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reviewsCount = freezed,
    Object? viewsMonth = freezed,
    Object? rating = freezed,
    Object? lastLogin = freezed,
    Object? isSuperUser = freezed,
    Object? email = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? deleted = freezed,
    Object? dateJoined = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? phone = freezed,
    Object? phoneVerified = freezed,
    Object? regDate = freezed,
    Object? lastActivity = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? notificationTypes = freezed,
    Object? notificationChat = freezed,
    Object? notificationJob = freezed,
    Object? notificationReview = freezed,
    Object? notificationNews = freezed,
    Object? notificationOffers = freezed,
    Object? allowCallsFrom = freezed,
    Object? allowCallsFromAmpm = freezed,
    Object? allowCallsTo = freezed,
    Object? allowCallsToAmpm = freezed,
    Object? callsFormat24 = freezed,
    Object? personalId = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? isVerified = freezed,
    Object? licenseNumber = freezed,
    Object? licenceExp = freezed,
    Object? licenceFile = freezed,
    Object? licenseUploaded = freezed,
    Object? licenseApproved = freezed,
    Object? passportFile = freezed,
    Object? emergencyResponse = freezed,
    Object? workingDays = freezed,
    Object? nativeLanguage = freezed,
    Object? measuring = freezed,
    Object? color = freezed,
    Object? telegramId = freezed,
    Object? workAs = freezed,
    Object? groups = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewsMonth: freezed == viewsMonth
          ? _value.viewsMonth
          : viewsMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuperUser: freezed == isSuperUser
          ? _value.isSuperUser
          : isSuperUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      regDate: freezed == regDate
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationTypes: freezed == notificationTypes
          ? _value._notificationTypes
          : notificationTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      notificationChat: freezed == notificationChat
          ? _value.notificationChat
          : notificationChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationJob: freezed == notificationJob
          ? _value.notificationJob
          : notificationJob // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationReview: freezed == notificationReview
          ? _value.notificationReview
          : notificationReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationNews: freezed == notificationNews
          ? _value.notificationNews
          : notificationNews // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationOffers: freezed == notificationOffers
          ? _value.notificationOffers
          : notificationOffers // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowCallsFrom: freezed == allowCallsFrom
          ? _value.allowCallsFrom
          : allowCallsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsFromAmpm: freezed == allowCallsFromAmpm
          ? _value.allowCallsFromAmpm
          : allowCallsFromAmpm // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsTo: freezed == allowCallsTo
          ? _value.allowCallsTo
          : allowCallsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsToAmpm: freezed == allowCallsToAmpm
          ? _value.allowCallsToAmpm
          : allowCallsToAmpm // ignore: cast_nullable_to_non_nullable
              as String?,
      callsFormat24: freezed == callsFormat24
          ? _value.callsFormat24
          : callsFormat24 // ignore: cast_nullable_to_non_nullable
              as bool?,
      personalId: freezed == personalId
          ? _value.personalId
          : personalId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      licenceExp: freezed == licenceExp
          ? _value.licenceExp
          : licenceExp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      licenceFile: freezed == licenceFile
          ? _value.licenceFile
          : licenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseUploaded: freezed == licenseUploaded
          ? _value.licenseUploaded
          : licenseUploaded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      licenseApproved: freezed == licenseApproved
          ? _value.licenseApproved
          : licenseApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      passportFile: freezed == passportFile
          ? _value.passportFile
          : passportFile // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyResponse: freezed == emergencyResponse
          ? _value.emergencyResponse
          : emergencyResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      workingDays: freezed == workingDays
          ? _value._workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nativeLanguage: freezed == nativeLanguage
          ? _value._nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      measuring: freezed == measuring
          ? _value.measuring
          : measuring // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      workAs: freezed == workAs
          ? _value.workAs
          : workAs // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      @JsonKey(name: "profile_views_per_month") this.viewsMonth,
      this.rating,
      @JsonKey(name: "last_login") this.lastLogin,
      @JsonKey(name: "is_superuser") this.isSuperUser,
      this.email,
      @JsonKey(name: "is_staff") this.isStaff,
      @JsonKey(name: "is_active") this.isActive,
      this.deleted,
      @JsonKey(name: "date_joined") this.dateJoined,
      this.name,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "device_token") this.deviceToken,
      this.platform,
      this.avatar,
      this.phone,
      @JsonKey(name: "phone_verified") this.phoneVerified,
      @JsonKey(name: "reg_date") this.regDate,
      @JsonKey(name: "last_activity") this.lastActivity,
      this.address,
      this.location,
      @JsonKey(name: "notification_types") final List<int>? notificationTypes,
      @JsonKey(name: "notification_chat") this.notificationChat,
      @JsonKey(name: "notification_job") this.notificationJob,
      @JsonKey(name: "notification_review") this.notificationReview,
      @JsonKey(name: "notification_news") this.notificationNews,
      @JsonKey(name: "notification_offers") this.notificationOffers,
      @JsonKey(name: "allow_calls_from") this.allowCallsFrom,
      @JsonKey(name: "allow_calls_from_ampm") this.allowCallsFromAmpm,
      @JsonKey(name: "allow_calls_to") this.allowCallsTo,
      @JsonKey(name: "allow_calls_to_ampm") this.allowCallsToAmpm,
      @JsonKey(name: "calls_format_24") this.callsFormat24,
      @JsonKey(name: "personal_id") this.personalId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "user_type") this.userType,
      @JsonKey(name: "is_verified") this.isVerified,
      @JsonKey(name: "license_number") this.licenseNumber,
      @JsonKey(name: "licence_exp") this.licenceExp,
      @JsonKey(name: "licence_file") this.licenceFile,
      @JsonKey(name: "license_uploaded") this.licenseUploaded,
      @JsonKey(name: "license_approved") this.licenseApproved,
      @JsonKey(name: "passport_file") this.passportFile,
      @JsonKey(name: "emergency_response") this.emergencyResponse,
      @JsonKey(name: "working_days") final List<String>? workingDays,
      @JsonKey(name: "native_language") final List<String>? nativeLanguage,
      this.measuring,
      this.color,
      @JsonKey(name: "telegram_id") this.telegramId,
      @JsonKey(name: "work_as") this.workAs,
      @JsonKey(name: "groups") final List<String>? groups})
      : _notificationTypes = notificationTypes,
        _workingDays = workingDays,
        _nativeLanguage = nativeLanguage,
        _groups = groups;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @override
  @JsonKey(name: "profile_views_per_month")
  final int? viewsMonth;
  @override
  final double? rating;
  @override
  @JsonKey(name: "last_login")
  final DateTime? lastLogin;
  @override
  @JsonKey(name: "is_superuser")
  final bool? isSuperUser;
  @override
  final String? email;
  @override
  @JsonKey(name: "is_staff")
  final bool? isStaff;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  final bool? deleted;
  @override
  @JsonKey(name: "date_joined")
  final DateTime? dateJoined;
  @override
  final String? name;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "device_token")
  final String? deviceToken;
  @override
  final String? platform;
  @override
  final String? avatar;
  @override
  final String? phone;
  @override
  @JsonKey(name: "phone_verified")
  final bool? phoneVerified;
  @override
  @JsonKey(name: "reg_date")
  final DateTime? regDate;
  @override
  @JsonKey(name: "last_activity")
  final DateTime? lastActivity;
  @override
  final String? address;
  @override
  final String? location;
  final List<int>? _notificationTypes;
  @override
  @JsonKey(name: "notification_types")
  List<int>? get notificationTypes {
    final value = _notificationTypes;
    if (value == null) return null;
    if (_notificationTypes is EqualUnmodifiableListView)
      return _notificationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "notification_chat")
  final bool? notificationChat;
  @override
  @JsonKey(name: "notification_job")
  final bool? notificationJob;
  @override
  @JsonKey(name: "notification_review")
  final bool? notificationReview;
  @override
  @JsonKey(name: "notification_news")
  final bool? notificationNews;
  @override
  @JsonKey(name: "notification_offers")
  final bool? notificationOffers;
  @override
  @JsonKey(name: "allow_calls_from")
  final String? allowCallsFrom;
  @override
  @JsonKey(name: "allow_calls_from_ampm")
  final String? allowCallsFromAmpm;
  @override
  @JsonKey(name: "allow_calls_to")
  final String? allowCallsTo;
  @override
  @JsonKey(name: "allow_calls_to_ampm")
  final String? allowCallsToAmpm;
  @override
  @JsonKey(name: "calls_format_24")
  final bool? callsFormat24;
  @override
  @JsonKey(name: "personal_id")
  final String? personalId;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "user_type")
  final String? userType;
  @override
  @JsonKey(name: "is_verified")
  final bool? isVerified;
  @override
  @JsonKey(name: "license_number")
  final String? licenseNumber;
  @override
  @JsonKey(name: "licence_exp")
  final DateTime? licenceExp;
  @override
  @JsonKey(name: "licence_file")
  final String? licenceFile;
  @override
  @JsonKey(name: "license_uploaded")
  final DateTime? licenseUploaded;
  @override
  @JsonKey(name: "license_approved")
  final bool? licenseApproved;
  @override
  @JsonKey(name: "passport_file")
  final String? passportFile;
  @override
  @JsonKey(name: "emergency_response")
  final bool? emergencyResponse;
  final List<String>? _workingDays;
  @override
  @JsonKey(name: "working_days")
  List<String>? get workingDays {
    final value = _workingDays;
    if (value == null) return null;
    if (_workingDays is EqualUnmodifiableListView) return _workingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _nativeLanguage;
  @override
  @JsonKey(name: "native_language")
  List<String>? get nativeLanguage {
    final value = _nativeLanguage;
    if (value == null) return null;
    if (_nativeLanguage is EqualUnmodifiableListView) return _nativeLanguage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? measuring;
  @override
  final String? color;
  @override
  @JsonKey(name: "telegram_id")
  final String? telegramId;
  @override
  @JsonKey(name: "work_as")
  final String? workAs;
  final List<String>? _groups;
  @override
  @JsonKey(name: "groups")
  List<String>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, reviewsCount: $reviewsCount, viewsMonth: $viewsMonth, rating: $rating, lastLogin: $lastLogin, isSuperUser: $isSuperUser, email: $email, isStaff: $isStaff, isActive: $isActive, deleted: $deleted, dateJoined: $dateJoined, name: $name, firstName: $firstName, lastName: $lastName, deviceToken: $deviceToken, platform: $platform, avatar: $avatar, phone: $phone, phoneVerified: $phoneVerified, regDate: $regDate, lastActivity: $lastActivity, address: $address, location: $location, notificationTypes: $notificationTypes, notificationChat: $notificationChat, notificationJob: $notificationJob, notificationReview: $notificationReview, notificationNews: $notificationNews, notificationOffers: $notificationOffers, allowCallsFrom: $allowCallsFrom, allowCallsFromAmpm: $allowCallsFromAmpm, allowCallsTo: $allowCallsTo, allowCallsToAmpm: $allowCallsToAmpm, callsFormat24: $callsFormat24, personalId: $personalId, userId: $userId, userType: $userType, isVerified: $isVerified, licenseNumber: $licenseNumber, licenceExp: $licenceExp, licenceFile: $licenceFile, licenseUploaded: $licenseUploaded, licenseApproved: $licenseApproved, passportFile: $passportFile, emergencyResponse: $emergencyResponse, workingDays: $workingDays, nativeLanguage: $nativeLanguage, measuring: $measuring, color: $color, telegramId: $telegramId, workAs: $workAs, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.viewsMonth, viewsMonth) ||
                other.viewsMonth == viewsMonth) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.isSuperUser, isSuperUser) ||
                other.isSuperUser == isSuperUser) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.regDate, regDate) || other.regDate == regDate) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._notificationTypes, _notificationTypes) &&
            (identical(other.notificationChat, notificationChat) ||
                other.notificationChat == notificationChat) &&
            (identical(other.notificationJob, notificationJob) ||
                other.notificationJob == notificationJob) &&
            (identical(other.notificationReview, notificationReview) ||
                other.notificationReview == notificationReview) &&
            (identical(other.notificationNews, notificationNews) ||
                other.notificationNews == notificationNews) &&
            (identical(other.notificationOffers, notificationOffers) ||
                other.notificationOffers == notificationOffers) &&
            (identical(other.allowCallsFrom, allowCallsFrom) ||
                other.allowCallsFrom == allowCallsFrom) &&
            (identical(other.allowCallsFromAmpm, allowCallsFromAmpm) ||
                other.allowCallsFromAmpm == allowCallsFromAmpm) &&
            (identical(other.allowCallsTo, allowCallsTo) ||
                other.allowCallsTo == allowCallsTo) &&
            (identical(other.allowCallsToAmpm, allowCallsToAmpm) ||
                other.allowCallsToAmpm == allowCallsToAmpm) &&
            (identical(other.callsFormat24, callsFormat24) ||
                other.callsFormat24 == callsFormat24) &&
            (identical(other.personalId, personalId) ||
                other.personalId == personalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.licenceExp, licenceExp) ||
                other.licenceExp == licenceExp) &&
            (identical(other.licenceFile, licenceFile) ||
                other.licenceFile == licenceFile) &&
            (identical(other.licenseUploaded, licenseUploaded) ||
                other.licenseUploaded == licenseUploaded) &&
            (identical(other.licenseApproved, licenseApproved) ||
                other.licenseApproved == licenseApproved) &&
            (identical(other.passportFile, passportFile) ||
                other.passportFile == passportFile) &&
            (identical(other.emergencyResponse, emergencyResponse) ||
                other.emergencyResponse == emergencyResponse) &&
            const DeepCollectionEquality()
                .equals(other._workingDays, _workingDays) &&
            const DeepCollectionEquality()
                .equals(other._nativeLanguage, _nativeLanguage) &&
            (identical(other.measuring, measuring) ||
                other.measuring == measuring) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.telegramId, telegramId) ||
                other.telegramId == telegramId) &&
            (identical(other.workAs, workAs) || other.workAs == workAs) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        reviewsCount,
        viewsMonth,
        rating,
        lastLogin,
        isSuperUser,
        email,
        isStaff,
        isActive,
        deleted,
        dateJoined,
        name,
        firstName,
        lastName,
        deviceToken,
        platform,
        avatar,
        phone,
        phoneVerified,
        regDate,
        lastActivity,
        address,
        location,
        const DeepCollectionEquality().hash(_notificationTypes),
        notificationChat,
        notificationJob,
        notificationReview,
        notificationNews,
        notificationOffers,
        allowCallsFrom,
        allowCallsFromAmpm,
        allowCallsTo,
        allowCallsToAmpm,
        callsFormat24,
        personalId,
        userId,
        userType,
        isVerified,
        licenseNumber,
        licenceExp,
        licenceFile,
        licenseUploaded,
        licenseApproved,
        passportFile,
        emergencyResponse,
        const DeepCollectionEquality().hash(_workingDays),
        const DeepCollectionEquality().hash(_nativeLanguage),
        measuring,
        color,
        telegramId,
        workAs,
        const DeepCollectionEquality().hash(_groups)
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? id,
      @JsonKey(name: "reviews_count") final int? reviewsCount,
      @JsonKey(name: "profile_views_per_month") final int? viewsMonth,
      final double? rating,
      @JsonKey(name: "last_login") final DateTime? lastLogin,
      @JsonKey(name: "is_superuser") final bool? isSuperUser,
      final String? email,
      @JsonKey(name: "is_staff") final bool? isStaff,
      @JsonKey(name: "is_active") final bool? isActive,
      final bool? deleted,
      @JsonKey(name: "date_joined") final DateTime? dateJoined,
      final String? name,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "device_token") final String? deviceToken,
      final String? platform,
      final String? avatar,
      final String? phone,
      @JsonKey(name: "phone_verified") final bool? phoneVerified,
      @JsonKey(name: "reg_date") final DateTime? regDate,
      @JsonKey(name: "last_activity") final DateTime? lastActivity,
      final String? address,
      final String? location,
      @JsonKey(name: "notification_types") final List<int>? notificationTypes,
      @JsonKey(name: "notification_chat") final bool? notificationChat,
      @JsonKey(name: "notification_job") final bool? notificationJob,
      @JsonKey(name: "notification_review") final bool? notificationReview,
      @JsonKey(name: "notification_news") final bool? notificationNews,
      @JsonKey(name: "notification_offers") final bool? notificationOffers,
      @JsonKey(name: "allow_calls_from") final String? allowCallsFrom,
      @JsonKey(name: "allow_calls_from_ampm") final String? allowCallsFromAmpm,
      @JsonKey(name: "allow_calls_to") final String? allowCallsTo,
      @JsonKey(name: "allow_calls_to_ampm") final String? allowCallsToAmpm,
      @JsonKey(name: "calls_format_24") final bool? callsFormat24,
      @JsonKey(name: "personal_id") final String? personalId,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "user_type") final String? userType,
      @JsonKey(name: "is_verified") final bool? isVerified,
      @JsonKey(name: "license_number") final String? licenseNumber,
      @JsonKey(name: "licence_exp") final DateTime? licenceExp,
      @JsonKey(name: "licence_file") final String? licenceFile,
      @JsonKey(name: "license_uploaded") final DateTime? licenseUploaded,
      @JsonKey(name: "license_approved") final bool? licenseApproved,
      @JsonKey(name: "passport_file") final String? passportFile,
      @JsonKey(name: "emergency_response") final bool? emergencyResponse,
      @JsonKey(name: "working_days") final List<String>? workingDays,
      @JsonKey(name: "native_language") final List<String>? nativeLanguage,
      final String? measuring,
      final String? color,
      @JsonKey(name: "telegram_id") final String? telegramId,
      @JsonKey(name: "work_as") final String? workAs,
      @JsonKey(name: "groups") final List<String>? groups}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  @JsonKey(name: "profile_views_per_month")
  int? get viewsMonth;
  @override
  double? get rating;
  @override
  @JsonKey(name: "last_login")
  DateTime? get lastLogin;
  @override
  @JsonKey(name: "is_superuser")
  bool? get isSuperUser;
  @override
  String? get email;
  @override
  @JsonKey(name: "is_staff")
  bool? get isStaff;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  bool? get deleted;
  @override
  @JsonKey(name: "date_joined")
  DateTime? get dateJoined;
  @override
  String? get name;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "device_token")
  String? get deviceToken;
  @override
  String? get platform;
  @override
  String? get avatar;
  @override
  String? get phone;
  @override
  @JsonKey(name: "phone_verified")
  bool? get phoneVerified;
  @override
  @JsonKey(name: "reg_date")
  DateTime? get regDate;
  @override
  @JsonKey(name: "last_activity")
  DateTime? get lastActivity;
  @override
  String? get address;
  @override
  String? get location;
  @override
  @JsonKey(name: "notification_types")
  List<int>? get notificationTypes;
  @override
  @JsonKey(name: "notification_chat")
  bool? get notificationChat;
  @override
  @JsonKey(name: "notification_job")
  bool? get notificationJob;
  @override
  @JsonKey(name: "notification_review")
  bool? get notificationReview;
  @override
  @JsonKey(name: "notification_news")
  bool? get notificationNews;
  @override
  @JsonKey(name: "notification_offers")
  bool? get notificationOffers;
  @override
  @JsonKey(name: "allow_calls_from")
  String? get allowCallsFrom;
  @override
  @JsonKey(name: "allow_calls_from_ampm")
  String? get allowCallsFromAmpm;
  @override
  @JsonKey(name: "allow_calls_to")
  String? get allowCallsTo;
  @override
  @JsonKey(name: "allow_calls_to_ampm")
  String? get allowCallsToAmpm;
  @override
  @JsonKey(name: "calls_format_24")
  bool? get callsFormat24;
  @override
  @JsonKey(name: "personal_id")
  String? get personalId;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "user_type")
  String? get userType;
  @override
  @JsonKey(name: "is_verified")
  bool? get isVerified;
  @override
  @JsonKey(name: "license_number")
  String? get licenseNumber;
  @override
  @JsonKey(name: "licence_exp")
  DateTime? get licenceExp;
  @override
  @JsonKey(name: "licence_file")
  String? get licenceFile;
  @override
  @JsonKey(name: "license_uploaded")
  DateTime? get licenseUploaded;
  @override
  @JsonKey(name: "license_approved")
  bool? get licenseApproved;
  @override
  @JsonKey(name: "passport_file")
  String? get passportFile;
  @override
  @JsonKey(name: "emergency_response")
  bool? get emergencyResponse;
  @override
  @JsonKey(name: "working_days")
  List<String>? get workingDays;
  @override
  @JsonKey(name: "native_language")
  List<String>? get nativeLanguage;
  @override
  String? get measuring;
  @override
  String? get color;
  @override
  @JsonKey(name: "telegram_id")
  String? get telegramId;
  @override
  @JsonKey(name: "work_as")
  String? get workAs;
  @override
  @JsonKey(name: "groups")
  List<String>? get groups;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
