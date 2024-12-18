import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/offers/di/offers_scope.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_model.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_screen.dart';

/// DI factory for [OffersWM].
OffersWM defaultOffersWMFactory(BuildContext context) {
  final scope = context.read<IOffersScope>();

  return OffersWM(OffersModel(repository: scope.repository));
}

/// Interface for [OffersWM].
abstract interface class IOffersWM with ThemeIModelMixin implements IWidgetModel {
  void showFilter() {}
}

/// {@template offers_wm.class}
/// [WidgetModel] for [OffersScreen].
/// {@endtemplate}
final class OffersWM extends WidgetModel<OffersScreen, OffersModel> with ThemeWMMixin implements IOffersWM {
  /// {@macro offers_wm.class}
  OffersWM(super._model);

  @override
  void showFilter() {
    showSelectableDialog(
      context: context,
      title: 'Search Filter ',
      onPressed: (value) {},
      data: ItemModel(),
      items: [],
    );
  }
}
