import 'package:everlook_mobile/source/imports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';

part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    int? id,
    String? preview,
    @JsonKey(name: 'big_preview') String? bigPreview,
    int? job,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}
