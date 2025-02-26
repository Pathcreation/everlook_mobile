import 'package:everlook_mobile/source/imports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';

part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    int? job,
    UserModel? user,
    int? star,
    String? text,
    String? answer,
    @JsonKey(name: "positive_tags")
    List<int>? positiveTags,
    @JsonKey(name: "negative_tags")
    List<String>? negativeTags,
    @JsonKey(name: "work_price")
    String? workPrice,
    @JsonKey(name: "materials_price")
    String? materialsPrice,
    List<String>? images,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
