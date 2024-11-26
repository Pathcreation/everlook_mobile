import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/my_offer/di/my_offer_scope.dart';
import 'package:everlook_mobile/features/my_offer/presentation/screens/my_offer/my_offer_model.dart';
import 'package:everlook_mobile/features/my_offer/presentation/screens/my_offer/my_offer_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [MyOfferWM].
MyOfferWM defaultMyOfferWMFactory(BuildContext context) {
  final scope = context.read<IMyOfferScope>();

  return MyOfferWM(MyOfferModel(repository: scope.repository));
}

/// Interface for [MyOfferWM].
abstract interface class IMyOfferWM  implements IWidgetModel {}

/// {@template my_offer_wm.class}
/// [WidgetModel] for [MyOfferScreen].
/// {@endtemplate}
final class MyOfferWM extends WidgetModel<MyOfferScreen, MyOfferModel>  implements IMyOfferWM {

  /// {@macro my_offer_wm.class}
  MyOfferWM(super._model);
}
