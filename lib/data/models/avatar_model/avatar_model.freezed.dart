// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) {
  return _AvatarModel.fromJson(json);
}

/// @nodoc
mixin _$AvatarModel {
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_300")
  String? get thumbnail300 => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_big")
  String? get thumbnailBig => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_small")
  String? get thumbnailSmall => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_letters")
  String? get avatarLetters => throw _privateConstructorUsedError;

  /// Serializes this AvatarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarModelCopyWith<AvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarModelCopyWith<$Res> {
  factory $AvatarModelCopyWith(
          AvatarModel value, $Res Function(AvatarModel) then) =
      _$AvatarModelCopyWithImpl<$Res, AvatarModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "thumbnail_300") String? thumbnail300,
      @JsonKey(name: "thumbnail_big") String? thumbnailBig,
      @JsonKey(name: "thumbnail_small") String? thumbnailSmall,
      @JsonKey(name: "avatar_letters") String? avatarLetters});
}

/// @nodoc
class _$AvatarModelCopyWithImpl<$Res, $Val extends AvatarModel>
    implements $AvatarModelCopyWith<$Res> {
  _$AvatarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? thumbnail300 = freezed,
    Object? thumbnailBig = freezed,
    Object? thumbnailSmall = freezed,
    Object? avatarLetters = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail300: freezed == thumbnail300
          ? _value.thumbnail300
          : thumbnail300 // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBig: freezed == thumbnailBig
          ? _value.thumbnailBig
          : thumbnailBig // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailSmall: freezed == thumbnailSmall
          ? _value.thumbnailSmall
          : thumbnailSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarLetters: freezed == avatarLetters
          ? _value.avatarLetters
          : avatarLetters // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarModelImplCopyWith<$Res>
    implements $AvatarModelCopyWith<$Res> {
  factory _$$AvatarModelImplCopyWith(
          _$AvatarModelImpl value, $Res Function(_$AvatarModelImpl) then) =
      __$$AvatarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "thumbnail_300") String? thumbnail300,
      @JsonKey(name: "thumbnail_big") String? thumbnailBig,
      @JsonKey(name: "thumbnail_small") String? thumbnailSmall,
      @JsonKey(name: "avatar_letters") String? avatarLetters});
}

/// @nodoc
class __$$AvatarModelImplCopyWithImpl<$Res>
    extends _$AvatarModelCopyWithImpl<$Res, _$AvatarModelImpl>
    implements _$$AvatarModelImplCopyWith<$Res> {
  __$$AvatarModelImplCopyWithImpl(
      _$AvatarModelImpl _value, $Res Function(_$AvatarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? thumbnail300 = freezed,
    Object? thumbnailBig = freezed,
    Object? thumbnailSmall = freezed,
    Object? avatarLetters = freezed,
  }) {
    return _then(_$AvatarModelImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail300: freezed == thumbnail300
          ? _value.thumbnail300
          : thumbnail300 // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBig: freezed == thumbnailBig
          ? _value.thumbnailBig
          : thumbnailBig // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailSmall: freezed == thumbnailSmall
          ? _value.thumbnailSmall
          : thumbnailSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarLetters: freezed == avatarLetters
          ? _value.avatarLetters
          : avatarLetters // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarModelImpl implements _AvatarModel {
  const _$AvatarModelImpl(
      {@JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "thumbnail_300") this.thumbnail300,
      @JsonKey(name: "thumbnail_big") this.thumbnailBig,
      @JsonKey(name: "thumbnail_small") this.thumbnailSmall,
      @JsonKey(name: "avatar_letters") this.avatarLetters});

  factory _$AvatarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarModelImplFromJson(json);

  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "thumbnail_300")
  final String? thumbnail300;
  @override
  @JsonKey(name: "thumbnail_big")
  final String? thumbnailBig;
  @override
  @JsonKey(name: "thumbnail_small")
  final String? thumbnailSmall;
  @override
  @JsonKey(name: "avatar_letters")
  final String? avatarLetters;

  @override
  String toString() {
    return 'AvatarModel(avatar: $avatar, thumbnail300: $thumbnail300, thumbnailBig: $thumbnailBig, thumbnailSmall: $thumbnailSmall, avatarLetters: $avatarLetters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarModelImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.thumbnail300, thumbnail300) ||
                other.thumbnail300 == thumbnail300) &&
            (identical(other.thumbnailBig, thumbnailBig) ||
                other.thumbnailBig == thumbnailBig) &&
            (identical(other.thumbnailSmall, thumbnailSmall) ||
                other.thumbnailSmall == thumbnailSmall) &&
            (identical(other.avatarLetters, avatarLetters) ||
                other.avatarLetters == avatarLetters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, thumbnail300,
      thumbnailBig, thumbnailSmall, avatarLetters);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      __$$AvatarModelImplCopyWithImpl<_$AvatarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarModelImplToJson(
      this,
    );
  }
}

abstract class _AvatarModel implements AvatarModel {
  const factory _AvatarModel(
          {@JsonKey(name: "avatar") final String? avatar,
          @JsonKey(name: "thumbnail_300") final String? thumbnail300,
          @JsonKey(name: "thumbnail_big") final String? thumbnailBig,
          @JsonKey(name: "thumbnail_small") final String? thumbnailSmall,
          @JsonKey(name: "avatar_letters") final String? avatarLetters}) =
      _$AvatarModelImpl;

  factory _AvatarModel.fromJson(Map<String, dynamic> json) =
      _$AvatarModelImpl.fromJson;

  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "thumbnail_300")
  String? get thumbnail300;
  @override
  @JsonKey(name: "thumbnail_big")
  String? get thumbnailBig;
  @override
  @JsonKey(name: "thumbnail_small")
  String? get thumbnailSmall;
  @override
  @JsonKey(name: "avatar_letters")
  String? get avatarLetters;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
