// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "structure_id")
  int? get structureId => throw _privateConstructorUsedError;
  @JsonKey(name: "child_count")
  int? get childCount => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: "f")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "t")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "per_sq")
  bool? get perSq => throw _privateConstructorUsedError;
  bool? get emergency => throw _privateConstructorUsedError;

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "structure_id") int? structureId,
      @JsonKey(name: "child_count") int? childCount,
      String? name,
      String? description,
      String? image,
      String? icon,
      String? slug,
      int? level,
      int? parent,
      @JsonKey(name: "f") int? from,
      @JsonKey(name: "t") int? to,
      @JsonKey(name: "per_sq") bool? perSq,
      bool? emergency});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? structureId = freezed,
    Object? childCount = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? slug = freezed,
    Object? level = freezed,
    Object? parent = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? perSq = freezed,
    Object? emergency = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      structureId: freezed == structureId
          ? _value.structureId
          : structureId // ignore: cast_nullable_to_non_nullable
              as int?,
      childCount: freezed == childCount
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perSq: freezed == perSq
          ? _value.perSq
          : perSq // ignore: cast_nullable_to_non_nullable
              as bool?,
      emergency: freezed == emergency
          ? _value.emergency
          : emergency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityModelImplCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$ActivityModelImplCopyWith(
          _$ActivityModelImpl value, $Res Function(_$ActivityModelImpl) then) =
      __$$ActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "structure_id") int? structureId,
      @JsonKey(name: "child_count") int? childCount,
      String? name,
      String? description,
      String? image,
      String? icon,
      String? slug,
      int? level,
      int? parent,
      @JsonKey(name: "f") int? from,
      @JsonKey(name: "t") int? to,
      @JsonKey(name: "per_sq") bool? perSq,
      bool? emergency});
}

/// @nodoc
class __$$ActivityModelImplCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res, _$ActivityModelImpl>
    implements _$$ActivityModelImplCopyWith<$Res> {
  __$$ActivityModelImplCopyWithImpl(
      _$ActivityModelImpl _value, $Res Function(_$ActivityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? structureId = freezed,
    Object? childCount = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? slug = freezed,
    Object? level = freezed,
    Object? parent = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? perSq = freezed,
    Object? emergency = freezed,
  }) {
    return _then(_$ActivityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      structureId: freezed == structureId
          ? _value.structureId
          : structureId // ignore: cast_nullable_to_non_nullable
              as int?,
      childCount: freezed == childCount
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perSq: freezed == perSq
          ? _value.perSq
          : perSq // ignore: cast_nullable_to_non_nullable
              as bool?,
      emergency: freezed == emergency
          ? _value.emergency
          : emergency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityModelImpl implements _ActivityModel {
  const _$ActivityModelImpl(
      {this.id,
      @JsonKey(name: "structure_id") this.structureId,
      @JsonKey(name: "child_count") this.childCount,
      this.name,
      this.description,
      this.image,
      this.icon,
      this.slug,
      this.level,
      this.parent,
      @JsonKey(name: "f") this.from,
      @JsonKey(name: "t") this.to,
      @JsonKey(name: "per_sq") this.perSq,
      this.emergency});

  factory _$ActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "structure_id")
  final int? structureId;
  @override
  @JsonKey(name: "child_count")
  final int? childCount;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? icon;
  @override
  final String? slug;
  @override
  final int? level;
  @override
  final int? parent;
  @override
  @JsonKey(name: "f")
  final int? from;
  @override
  @JsonKey(name: "t")
  final int? to;
  @override
  @JsonKey(name: "per_sq")
  final bool? perSq;
  @override
  final bool? emergency;

  @override
  String toString() {
    return 'ActivityModel(id: $id, structureId: $structureId, childCount: $childCount, name: $name, description: $description, image: $image, icon: $icon, slug: $slug, level: $level, parent: $parent, from: $from, to: $to, perSq: $perSq, emergency: $emergency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.structureId, structureId) ||
                other.structureId == structureId) &&
            (identical(other.childCount, childCount) ||
                other.childCount == childCount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.perSq, perSq) || other.perSq == perSq) &&
            (identical(other.emergency, emergency) ||
                other.emergency == emergency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      structureId,
      childCount,
      name,
      description,
      image,
      icon,
      slug,
      level,
      parent,
      from,
      to,
      perSq,
      emergency);

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      __$$ActivityModelImplCopyWithImpl<_$ActivityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityModel implements ActivityModel {
  const factory _ActivityModel(
      {final int? id,
      @JsonKey(name: "structure_id") final int? structureId,
      @JsonKey(name: "child_count") final int? childCount,
      final String? name,
      final String? description,
      final String? image,
      final String? icon,
      final String? slug,
      final int? level,
      final int? parent,
      @JsonKey(name: "f") final int? from,
      @JsonKey(name: "t") final int? to,
      @JsonKey(name: "per_sq") final bool? perSq,
      final bool? emergency}) = _$ActivityModelImpl;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$ActivityModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "structure_id")
  int? get structureId;
  @override
  @JsonKey(name: "child_count")
  int? get childCount;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get icon;
  @override
  String? get slug;
  @override
  int? get level;
  @override
  int? get parent;
  @override
  @JsonKey(name: "f")
  int? get from;
  @override
  @JsonKey(name: "t")
  int? get to;
  @override
  @JsonKey(name: "per_sq")
  bool? get perSq;
  @override
  bool? get emergency;

  /// Create a copy of ActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityModelImplCopyWith<_$ActivityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
