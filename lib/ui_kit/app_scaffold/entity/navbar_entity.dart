import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:everlook_mobile/source/constants.dart';

part 'navbar_entity.freezed.dart';

part 'navbar_entity.g.dart';

@freezed
class NavbarEntity with _$NavbarEntity {
  const factory NavbarEntity({
    IconsType? icons,
    String? label,
  }) = _NavbarEntity;

  factory NavbarEntity.fromJson(Map<String, dynamic> json) =>
      _$NavbarEntityFromJson(json);
}
