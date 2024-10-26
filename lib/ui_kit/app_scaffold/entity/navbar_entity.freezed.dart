// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navbar_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NavbarEntity _$NavbarEntityFromJson(Map<String, dynamic> json) {
  return _NavbarEntity.fromJson(json);
}

/// @nodoc
mixin _$NavbarEntity {
  IconsType? get icons => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavbarEntityCopyWith<NavbarEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavbarEntityCopyWith<$Res> {
  factory $NavbarEntityCopyWith(
          NavbarEntity value, $Res Function(NavbarEntity) then) =
      _$NavbarEntityCopyWithImpl<$Res, NavbarEntity>;
  @useResult
  $Res call({IconsType? icons, String? label});
}

/// @nodoc
class _$NavbarEntityCopyWithImpl<$Res, $Val extends NavbarEntity>
    implements $NavbarEntityCopyWith<$Res> {
  _$NavbarEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      icons: freezed == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as IconsType?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavbarEntityImplCopyWith<$Res>
    implements $NavbarEntityCopyWith<$Res> {
  factory _$$NavbarEntityImplCopyWith(
          _$NavbarEntityImpl value, $Res Function(_$NavbarEntityImpl) then) =
      __$$NavbarEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconsType? icons, String? label});
}

/// @nodoc
class __$$NavbarEntityImplCopyWithImpl<$Res>
    extends _$NavbarEntityCopyWithImpl<$Res, _$NavbarEntityImpl>
    implements _$$NavbarEntityImplCopyWith<$Res> {
  __$$NavbarEntityImplCopyWithImpl(
      _$NavbarEntityImpl _value, $Res Function(_$NavbarEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = freezed,
    Object? label = freezed,
  }) {
    return _then(_$NavbarEntityImpl(
      icons: freezed == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as IconsType?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavbarEntityImpl implements _NavbarEntity {
  const _$NavbarEntityImpl({this.icons, this.label});

  factory _$NavbarEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavbarEntityImplFromJson(json);

  @override
  final IconsType? icons;
  @override
  final String? label;

  @override
  String toString() {
    return 'NavbarEntity(icons: $icons, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavbarEntityImpl &&
            (identical(other.icons, icons) || other.icons == icons) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icons, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavbarEntityImplCopyWith<_$NavbarEntityImpl> get copyWith =>
      __$$NavbarEntityImplCopyWithImpl<_$NavbarEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavbarEntityImplToJson(
      this,
    );
  }
}

abstract class _NavbarEntity implements NavbarEntity {
  const factory _NavbarEntity({final IconsType? icons, final String? label}) =
      _$NavbarEntityImpl;

  factory _NavbarEntity.fromJson(Map<String, dynamic> json) =
      _$NavbarEntityImpl.fromJson;

  @override
  IconsType? get icons;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$NavbarEntityImplCopyWith<_$NavbarEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
