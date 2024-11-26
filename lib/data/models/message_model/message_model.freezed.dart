// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  int? get id => throw _privateConstructorUsedError;
  int? get chat => throw _privateConstructorUsedError;
  int? get f => throw _privateConstructorUsedError;
  int? get t => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_date_f")
  DateTime? get offerDateF => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_date_t")
  DateTime? get offerDateT => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price_f")
  int? get offerPriceF => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price_t")
  int? get offerPriceT => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_status")
  String? get offerStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "is_offer_request")
  bool? get isOfferRequest => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "readed_at")
  DateTime? get readedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {int? id,
      int? chat,
      int? f,
      int? t,
      String? text,
      @JsonKey(name: "offer_date_f") DateTime? offerDateF,
      @JsonKey(name: "offer_date_t") DateTime? offerDateT,
      @JsonKey(name: "offer_price_f") int? offerPriceF,
      @JsonKey(name: "offer_price_t") int? offerPriceT,
      @JsonKey(name: "offer_status") String? offerStatus,
      @JsonKey(name: "is_offer_request") bool? isOfferRequest,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "readed_at") DateTime? readedAt});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chat = freezed,
    Object? f = freezed,
    Object? t = freezed,
    Object? text = freezed,
    Object? offerDateF = freezed,
    Object? offerDateT = freezed,
    Object? offerPriceF = freezed,
    Object? offerPriceT = freezed,
    Object? offerStatus = freezed,
    Object? isOfferRequest = freezed,
    Object? createdAt = freezed,
    Object? readedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int?,
      f: freezed == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as int?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDateF: freezed == offerDateF
          ? _value.offerDateF
          : offerDateF // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerDateT: freezed == offerDateT
          ? _value.offerDateT
          : offerDateT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerPriceF: freezed == offerPriceF
          ? _value.offerPriceF
          : offerPriceF // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPriceT: freezed == offerPriceT
          ? _value.offerPriceT
          : offerPriceT // ignore: cast_nullable_to_non_nullable
              as int?,
      offerStatus: freezed == offerStatus
          ? _value.offerStatus
          : offerStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isOfferRequest: freezed == isOfferRequest
          ? _value.isOfferRequest
          : isOfferRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readedAt: freezed == readedAt
          ? _value.readedAt
          : readedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? chat,
      int? f,
      int? t,
      String? text,
      @JsonKey(name: "offer_date_f") DateTime? offerDateF,
      @JsonKey(name: "offer_date_t") DateTime? offerDateT,
      @JsonKey(name: "offer_price_f") int? offerPriceF,
      @JsonKey(name: "offer_price_t") int? offerPriceT,
      @JsonKey(name: "offer_status") String? offerStatus,
      @JsonKey(name: "is_offer_request") bool? isOfferRequest,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "readed_at") DateTime? readedAt});
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chat = freezed,
    Object? f = freezed,
    Object? t = freezed,
    Object? text = freezed,
    Object? offerDateF = freezed,
    Object? offerDateT = freezed,
    Object? offerPriceF = freezed,
    Object? offerPriceT = freezed,
    Object? offerStatus = freezed,
    Object? isOfferRequest = freezed,
    Object? createdAt = freezed,
    Object? readedAt = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int?,
      f: freezed == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as int?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDateF: freezed == offerDateF
          ? _value.offerDateF
          : offerDateF // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerDateT: freezed == offerDateT
          ? _value.offerDateT
          : offerDateT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      offerPriceF: freezed == offerPriceF
          ? _value.offerPriceF
          : offerPriceF // ignore: cast_nullable_to_non_nullable
              as int?,
      offerPriceT: freezed == offerPriceT
          ? _value.offerPriceT
          : offerPriceT // ignore: cast_nullable_to_non_nullable
              as int?,
      offerStatus: freezed == offerStatus
          ? _value.offerStatus
          : offerStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isOfferRequest: freezed == isOfferRequest
          ? _value.isOfferRequest
          : isOfferRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readedAt: freezed == readedAt
          ? _value.readedAt
          : readedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {this.id,
      this.chat,
      this.f,
      this.t,
      this.text,
      @JsonKey(name: "offer_date_f") this.offerDateF,
      @JsonKey(name: "offer_date_t") this.offerDateT,
      @JsonKey(name: "offer_price_f") this.offerPriceF,
      @JsonKey(name: "offer_price_t") this.offerPriceT,
      @JsonKey(name: "offer_status") this.offerStatus,
      @JsonKey(name: "is_offer_request") this.isOfferRequest,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "readed_at") this.readedAt});

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? chat;
  @override
  final int? f;
  @override
  final int? t;
  @override
  final String? text;
  @override
  @JsonKey(name: "offer_date_f")
  final DateTime? offerDateF;
  @override
  @JsonKey(name: "offer_date_t")
  final DateTime? offerDateT;
  @override
  @JsonKey(name: "offer_price_f")
  final int? offerPriceF;
  @override
  @JsonKey(name: "offer_price_t")
  final int? offerPriceT;
  @override
  @JsonKey(name: "offer_status")
  final String? offerStatus;
  @override
  @JsonKey(name: "is_offer_request")
  final bool? isOfferRequest;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "readed_at")
  final DateTime? readedAt;

  @override
  String toString() {
    return 'MessageModel(id: $id, chat: $chat, f: $f, t: $t, text: $text, offerDateF: $offerDateF, offerDateT: $offerDateT, offerPriceF: $offerPriceF, offerPriceT: $offerPriceT, offerStatus: $offerStatus, isOfferRequest: $isOfferRequest, createdAt: $createdAt, readedAt: $readedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.f, f) || other.f == f) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.offerDateF, offerDateF) ||
                other.offerDateF == offerDateF) &&
            (identical(other.offerDateT, offerDateT) ||
                other.offerDateT == offerDateT) &&
            (identical(other.offerPriceF, offerPriceF) ||
                other.offerPriceF == offerPriceF) &&
            (identical(other.offerPriceT, offerPriceT) ||
                other.offerPriceT == offerPriceT) &&
            (identical(other.offerStatus, offerStatus) ||
                other.offerStatus == offerStatus) &&
            (identical(other.isOfferRequest, isOfferRequest) ||
                other.isOfferRequest == isOfferRequest) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.readedAt, readedAt) ||
                other.readedAt == readedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chat,
      f,
      t,
      text,
      offerDateF,
      offerDateT,
      offerPriceF,
      offerPriceT,
      offerStatus,
      isOfferRequest,
      createdAt,
      readedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
          {final int? id,
          final int? chat,
          final int? f,
          final int? t,
          final String? text,
          @JsonKey(name: "offer_date_f") final DateTime? offerDateF,
          @JsonKey(name: "offer_date_t") final DateTime? offerDateT,
          @JsonKey(name: "offer_price_f") final int? offerPriceF,
          @JsonKey(name: "offer_price_t") final int? offerPriceT,
          @JsonKey(name: "offer_status") final String? offerStatus,
          @JsonKey(name: "is_offer_request") final bool? isOfferRequest,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "readed_at") final DateTime? readedAt}) =
      _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get chat;
  @override
  int? get f;
  @override
  int? get t;
  @override
  String? get text;
  @override
  @JsonKey(name: "offer_date_f")
  DateTime? get offerDateF;
  @override
  @JsonKey(name: "offer_date_t")
  DateTime? get offerDateT;
  @override
  @JsonKey(name: "offer_price_f")
  int? get offerPriceF;
  @override
  @JsonKey(name: "offer_price_t")
  int? get offerPriceT;
  @override
  @JsonKey(name: "offer_status")
  String? get offerStatus;
  @override
  @JsonKey(name: "is_offer_request")
  bool? get isOfferRequest;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "readed_at")
  DateTime? get readedAt;
  @override
  @JsonKey(ignore: true)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
