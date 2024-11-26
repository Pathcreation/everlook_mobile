import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/offers/di/offers_scope.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_model.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [OffersWM].
OffersWM defaultOffersWMFactory(BuildContext context) {
  final scope = context.read<IOffersScope>();

  return OffersWM(OffersModel(repository: scope.repository));
}

/// Interface for [OffersWM].
abstract interface class IOffersWM  implements IWidgetModel {}

/// {@template offers_wm.class}
/// [WidgetModel] for [OffersScreen].
/// {@endtemplate}
final class OffersWM extends WidgetModel<OffersScreen, OffersModel>  implements IOffersWM {

  /// {@macro offers_wm.class}
  OffersWM(super._model);
}
