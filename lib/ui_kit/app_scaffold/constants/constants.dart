import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/app_scaffold/entity/navbar_entity.dart';

/// Returns the navbar icon widget
Widget icons({
  required IconsType iconsType,
  required bool active,
  required ThemeData theme,
}) {
  switch (iconsType) {
    case IconsType.add:
      return Icon(Icons.home);
    case IconsType.discussions:
      return Icon(Icons.home,
        color: active ? Colors.white : AppColors.additional1,
      );
    case IconsType.messages:
      return Icon(Icons.home,
        color: active ? Colors.white : AppColors.additional1,
      );
    case IconsType.profile:
      return Icon(Icons.home,
        color: active ? Colors.white : AppColors.additional1,
      );
    default:
      return const SizedBox();
  }
}

/// Navbar's item list
List<NavbarEntity> navbarList() {
  return const [
    NavbarEntity(
      label: '',
      icons: IconsType.add,
    ),
    NavbarEntity(
      label: '',
      icons: IconsType.discussions,
    ),
    NavbarEntity(
      label: '',
      icons: IconsType.messages,
    ),
    NavbarEntity(
      label: '',
      icons: IconsType.profile,
    ),
  ];
}
