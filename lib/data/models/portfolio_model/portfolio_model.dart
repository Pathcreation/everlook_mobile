
import 'package:everlook_mobile/source/imports.dart';

part 'portfolio_model.freezed.dart';

part 'portfolio_model.g.dart';

@freezed
class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    List<ImageModel>? images,
    List<VideoModel>? videos,
    List<ItemModel>? textblocks,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) => _$PortfolioModelFromJson(json);
}
