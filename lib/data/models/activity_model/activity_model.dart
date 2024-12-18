import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_model.freezed.dart';

part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    int? id,
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
    bool? emergency,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);
}
