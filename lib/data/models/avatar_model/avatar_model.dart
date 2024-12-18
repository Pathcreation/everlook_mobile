import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'avatar_model.freezed.dart';

part 'avatar_model.g.dart';

@freezed
class AvatarModel with _$AvatarModel {
  const factory AvatarModel({
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "thumbnail_300") String? thumbnail300,
    @JsonKey(name: "thumbnail_big") String? thumbnailBig,
    @JsonKey(name: "thumbnail_small") String? thumbnailSmall,
    @JsonKey(name: "avatar_letters") String? avatarLetters,
  }) = _AvatarModel;

  factory AvatarModel.fromJson(Map<String, dynamic> json) => _$AvatarModelFromJson(json);
}
