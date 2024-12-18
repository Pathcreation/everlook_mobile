// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  int? get job => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  int? get star => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "positive_tags")
  List<int>? get positiveTags => throw _privateConstructorUsedError;
  @JsonKey(name: "negative_tags")
  List<String>? get negativeTags => throw _privateConstructorUsedError;
  @JsonKey(name: "work_price")
  String? get workPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "materials_price")
  String? get materialsPrice => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) then) =
      _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call(
      {int? job,
      UserModel? user,
      int? star,
      String? text,
      String? answer,
      @JsonKey(name: "positive_tags") List<int>? positiveTags,
      @JsonKey(name: "negative_tags") List<String>? negativeTags,
      @JsonKey(name: "work_price") String? workPrice,
      @JsonKey(name: "materials_price") String? materialsPrice,
      List<String>? images});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = freezed,
    Object? user = freezed,
    Object? star = freezed,
    Object? text = freezed,
    Object? answer = freezed,
    Object? positiveTags = freezed,
    Object? negativeTags = freezed,
    Object? workPrice = freezed,
    Object? materialsPrice = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveTags: freezed == positiveTags
          ? _value.positiveTags
          : positiveTags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      negativeTags: freezed == negativeTags
          ? _value.negativeTags
          : negativeTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workPrice: freezed == workPrice
          ? _value.workPrice
          : workPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      materialsPrice: freezed == materialsPrice
          ? _value.materialsPrice
          : materialsPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of ReviewModel
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
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
          _$ReviewModelImpl value, $Res Function(_$ReviewModelImpl) then) =
      __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? job,
      UserModel? user,
      int? star,
      String? text,
      String? answer,
      @JsonKey(name: "positive_tags") List<int>? positiveTags,
      @JsonKey(name: "negative_tags") List<String>? negativeTags,
      @JsonKey(name: "work_price") String? workPrice,
      @JsonKey(name: "materials_price") String? materialsPrice,
      List<String>? images});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
      _$ReviewModelImpl _value, $Res Function(_$ReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = freezed,
    Object? user = freezed,
    Object? star = freezed,
    Object? text = freezed,
    Object? answer = freezed,
    Object? positiveTags = freezed,
    Object? negativeTags = freezed,
    Object? workPrice = freezed,
    Object? materialsPrice = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ReviewModelImpl(
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveTags: freezed == positiveTags
          ? _value._positiveTags
          : positiveTags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      negativeTags: freezed == negativeTags
          ? _value._negativeTags
          : negativeTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workPrice: freezed == workPrice
          ? _value.workPrice
          : workPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      materialsPrice: freezed == materialsPrice
          ? _value.materialsPrice
          : materialsPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  const _$ReviewModelImpl(
      {this.job,
      this.user,
      this.star,
      this.text,
      this.answer,
      @JsonKey(name: "positive_tags") final List<int>? positiveTags,
      @JsonKey(name: "negative_tags") final List<String>? negativeTags,
      @JsonKey(name: "work_price") this.workPrice,
      @JsonKey(name: "materials_price") this.materialsPrice,
      final List<String>? images})
      : _positiveTags = positiveTags,
        _negativeTags = negativeTags,
        _images = images;

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  final int? job;
  @override
  final UserModel? user;
  @override
  final int? star;
  @override
  final String? text;
  @override
  final String? answer;
  final List<int>? _positiveTags;
  @override
  @JsonKey(name: "positive_tags")
  List<int>? get positiveTags {
    final value = _positiveTags;
    if (value == null) return null;
    if (_positiveTags is EqualUnmodifiableListView) return _positiveTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _negativeTags;
  @override
  @JsonKey(name: "negative_tags")
  List<String>? get negativeTags {
    final value = _negativeTags;
    if (value == null) return null;
    if (_negativeTags is EqualUnmodifiableListView) return _negativeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "work_price")
  final String? workPrice;
  @override
  @JsonKey(name: "materials_price")
  final String? materialsPrice;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewModel(job: $job, user: $user, star: $star, text: $text, answer: $answer, positiveTags: $positiveTags, negativeTags: $negativeTags, workPrice: $workPrice, materialsPrice: $materialsPrice, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality()
                .equals(other._positiveTags, _positiveTags) &&
            const DeepCollectionEquality()
                .equals(other._negativeTags, _negativeTags) &&
            (identical(other.workPrice, workPrice) ||
                other.workPrice == workPrice) &&
            (identical(other.materialsPrice, materialsPrice) ||
                other.materialsPrice == materialsPrice) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      job,
      user,
      star,
      text,
      answer,
      const DeepCollectionEquality().hash(_positiveTags),
      const DeepCollectionEquality().hash(_negativeTags),
      workPrice,
      materialsPrice,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel(
      {final int? job,
      final UserModel? user,
      final int? star,
      final String? text,
      final String? answer,
      @JsonKey(name: "positive_tags") final List<int>? positiveTags,
      @JsonKey(name: "negative_tags") final List<String>? negativeTags,
      @JsonKey(name: "work_price") final String? workPrice,
      @JsonKey(name: "materials_price") final String? materialsPrice,
      final List<String>? images}) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  int? get job;
  @override
  UserModel? get user;
  @override
  int? get star;
  @override
  String? get text;
  @override
  String? get answer;
  @override
  @JsonKey(name: "positive_tags")
  List<int>? get positiveTags;
  @override
  @JsonKey(name: "negative_tags")
  List<String>? get negativeTags;
  @override
  @JsonKey(name: "work_price")
  String? get workPrice;
  @override
  @JsonKey(name: "materials_price")
  String? get materialsPrice;
  @override
  List<String>? get images;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
