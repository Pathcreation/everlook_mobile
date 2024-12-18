import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    int? id,
    String? answer,
    String? name,
    String? description,
    String? header,
    String? text,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
