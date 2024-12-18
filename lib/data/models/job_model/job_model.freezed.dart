// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  int? get id => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  int? get contractor => throw _privateConstructorUsedError;
  int? get structure => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_from")
  String? get allowCallsFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_calls_to")
  String? get allowCallsTo => throw _privateConstructorUsedError;
  @JsonKey(name: "native_language")
  String? get nativeLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "desired_price")
  int? get desiredPrice => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;

  /// Serializes this JobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call(
      {int? id,
      UserModel? user,
      int? contractor,
      int? structure,
      String? title,
      String? phone,
      @JsonKey(name: "allow_calls_from") String? allowCallsFrom,
      @JsonKey(name: "allow_calls_to") String? allowCallsTo,
      @JsonKey(name: "native_language") String? nativeLanguage,
      @JsonKey(name: "desired_price") int? desiredPrice,
      String? address,
      LocationModel? location,
      String? description,
      String? status,
      @JsonKey(name: "start_date") DateTime? startDate,
      @JsonKey(name: "end_date") DateTime? endDate,
      List<ImageModel>? images});

  $UserModelCopyWith<$Res>? get user;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? contractor = freezed,
    Object? structure = freezed,
    Object? title = freezed,
    Object? phone = freezed,
    Object? allowCallsFrom = freezed,
    Object? allowCallsTo = freezed,
    Object? nativeLanguage = freezed,
    Object? desiredPrice = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as int?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsFrom: freezed == allowCallsFrom
          ? _value.allowCallsFrom
          : allowCallsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsTo: freezed == allowCallsTo
          ? _value.allowCallsTo
          : allowCallsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      desiredPrice: freezed == desiredPrice
          ? _value.desiredPrice
          : desiredPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobModelImplCopyWith<$Res>
    implements $JobModelCopyWith<$Res> {
  factory _$$JobModelImplCopyWith(
          _$JobModelImpl value, $Res Function(_$JobModelImpl) then) =
      __$$JobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      UserModel? user,
      int? contractor,
      int? structure,
      String? title,
      String? phone,
      @JsonKey(name: "allow_calls_from") String? allowCallsFrom,
      @JsonKey(name: "allow_calls_to") String? allowCallsTo,
      @JsonKey(name: "native_language") String? nativeLanguage,
      @JsonKey(name: "desired_price") int? desiredPrice,
      String? address,
      LocationModel? location,
      String? description,
      String? status,
      @JsonKey(name: "start_date") DateTime? startDate,
      @JsonKey(name: "end_date") DateTime? endDate,
      List<ImageModel>? images});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$JobModelImplCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$JobModelImpl>
    implements _$$JobModelImplCopyWith<$Res> {
  __$$JobModelImplCopyWithImpl(
      _$JobModelImpl _value, $Res Function(_$JobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? contractor = freezed,
    Object? structure = freezed,
    Object? title = freezed,
    Object? phone = freezed,
    Object? allowCallsFrom = freezed,
    Object? allowCallsTo = freezed,
    Object? nativeLanguage = freezed,
    Object? desiredPrice = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? images = freezed,
  }) {
    return _then(_$JobModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as int?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsFrom: freezed == allowCallsFrom
          ? _value.allowCallsFrom
          : allowCallsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCallsTo: freezed == allowCallsTo
          ? _value.allowCallsTo
          : allowCallsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeLanguage: freezed == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      desiredPrice: freezed == desiredPrice
          ? _value.desiredPrice
          : desiredPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobModelImpl implements _JobModel {
  const _$JobModelImpl(
      {this.id,
      this.user,
      this.contractor,
      this.structure,
      this.title,
      this.phone,
      @JsonKey(name: "allow_calls_from") this.allowCallsFrom,
      @JsonKey(name: "allow_calls_to") this.allowCallsTo,
      @JsonKey(name: "native_language") this.nativeLanguage,
      @JsonKey(name: "desired_price") this.desiredPrice,
      this.address,
      this.location,
      this.description,
      this.status,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate,
      final List<ImageModel>? images})
      : _images = images;

  factory _$JobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobModelImplFromJson(json);

  @override
  final int? id;
  @override
  final UserModel? user;
  @override
  final int? contractor;
  @override
  final int? structure;
  @override
  final String? title;
  @override
  final String? phone;
  @override
  @JsonKey(name: "allow_calls_from")
  final String? allowCallsFrom;
  @override
  @JsonKey(name: "allow_calls_to")
  final String? allowCallsTo;
  @override
  @JsonKey(name: "native_language")
  final String? nativeLanguage;
  @override
  @JsonKey(name: "desired_price")
  final int? desiredPrice;
  @override
  final String? address;
  @override
  final LocationModel? location;
  @override
  final String? description;
  @override
  final String? status;
  @override
  @JsonKey(name: "start_date")
  final DateTime? startDate;
  @override
  @JsonKey(name: "end_date")
  final DateTime? endDate;
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobModel(id: $id, user: $user, contractor: $contractor, structure: $structure, title: $title, phone: $phone, allowCallsFrom: $allowCallsFrom, allowCallsTo: $allowCallsTo, nativeLanguage: $nativeLanguage, desiredPrice: $desiredPrice, address: $address, location: $location, description: $description, status: $status, startDate: $startDate, endDate: $endDate, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.contractor, contractor) ||
                other.contractor == contractor) &&
            (identical(other.structure, structure) ||
                other.structure == structure) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.allowCallsFrom, allowCallsFrom) ||
                other.allowCallsFrom == allowCallsFrom) &&
            (identical(other.allowCallsTo, allowCallsTo) ||
                other.allowCallsTo == allowCallsTo) &&
            (identical(other.nativeLanguage, nativeLanguage) ||
                other.nativeLanguage == nativeLanguage) &&
            (identical(other.desiredPrice, desiredPrice) ||
                other.desiredPrice == desiredPrice) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      contractor,
      structure,
      title,
      phone,
      allowCallsFrom,
      allowCallsTo,
      nativeLanguage,
      desiredPrice,
      address,
      location,
      description,
      status,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      __$$JobModelImplCopyWithImpl<_$JobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobModelImplToJson(
      this,
    );
  }
}

abstract class _JobModel implements JobModel {
  const factory _JobModel(
      {final int? id,
      final UserModel? user,
      final int? contractor,
      final int? structure,
      final String? title,
      final String? phone,
      @JsonKey(name: "allow_calls_from") final String? allowCallsFrom,
      @JsonKey(name: "allow_calls_to") final String? allowCallsTo,
      @JsonKey(name: "native_language") final String? nativeLanguage,
      @JsonKey(name: "desired_price") final int? desiredPrice,
      final String? address,
      final LocationModel? location,
      final String? description,
      final String? status,
      @JsonKey(name: "start_date") final DateTime? startDate,
      @JsonKey(name: "end_date") final DateTime? endDate,
      final List<ImageModel>? images}) = _$JobModelImpl;

  factory _JobModel.fromJson(Map<String, dynamic> json) =
      _$JobModelImpl.fromJson;

  @override
  int? get id;
  @override
  UserModel? get user;
  @override
  int? get contractor;
  @override
  int? get structure;
  @override
  String? get title;
  @override
  String? get phone;
  @override
  @JsonKey(name: "allow_calls_from")
  String? get allowCallsFrom;
  @override
  @JsonKey(name: "allow_calls_to")
  String? get allowCallsTo;
  @override
  @JsonKey(name: "native_language")
  String? get nativeLanguage;
  @override
  @JsonKey(name: "desired_price")
  int? get desiredPrice;
  @override
  String? get address;
  @override
  LocationModel? get location;
  @override
  String? get description;
  @override
  String? get status;
  @override
  @JsonKey(name: "start_date")
  DateTime? get startDate;
  @override
  @JsonKey(name: "end_date")
  DateTime? get endDate;
  @override
  List<ImageModel>? get images;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
