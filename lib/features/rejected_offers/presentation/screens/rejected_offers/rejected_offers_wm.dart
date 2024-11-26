import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/rejected_offers/di/rejected_offers_scope.dart';
import 'package:everlook_mobile/features/rejected_offers/presentation/screens/rejected_offers/rejected_offers_model.dart';
import 'package:everlook_mobile/features/rejected_offers/presentation/screens/rejected_offers/rejected_offers_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [RejectedOffersWM].
RejectedOffersWM defaultRejectedOffersWMFactory(BuildContext context) {
  final scope = context.read<IRejectedOffersScope>();

  return RejectedOffersWM(RejectedOffersModel(repository: scope.repository));
}

/// Interface for [RejectedOffersWM].
abstract interface class IRejectedOffersWM  implements IWidgetModel {}

/// {@template rejected_offers_wm.class}
/// [WidgetModel] for [RejectedOffersScreen].
/// {@endtemplate}
final class RejectedOffersWM extends WidgetModel<RejectedOffersScreen, RejectedOffersModel>  implements IRejectedOffersWM {

  /// {@macro rejected_offers_wm.class}
  RejectedOffersWM(super._model);
}
