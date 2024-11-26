import 'package:everlook_mobile/data/models/location_model/location_model.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';

part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  const factory JobModel({
    int? id,
    UserModel? user,
    int? contractor,
    int? structure,
    String? title,
    String? phone,
    @JsonKey(name: "allow_calls_from")
    String? allowCallsFrom,
    @JsonKey(name: "allow_calls_to")
    String? allowCallsTo,
    @JsonKey(name: "native_language")
    String? nativeLanguage,
    @JsonKey(name: "desired_price")
    int? desiredPrice,
    String? address,
    LocationModel? location,
    String? description,
    String? status,
    @JsonKey(name: "start_date")
    DateTime? startDate,
    @JsonKey(name: "end_date")
    DateTime? endDate,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}
