import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/offer_request/di/offer_request_scope.dart';
import 'package:everlook_mobile/features/offer_request/presentation/screens/offer_request/offer_request_model.dart';
import 'package:everlook_mobile/features/offer_request/presentation/screens/offer_request/offer_request_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [OfferRequestWM].
OfferRequestWM defaultOfferRequestWMFactory(BuildContext context) {
  final scope = context.read<IOfferRequestScope>();

  return OfferRequestWM(OfferRequestModel(repository: scope.repository));
}

/// Interface for [OfferRequestWM].
abstract interface class IOfferRequestWM  implements IWidgetModel {}

/// {@template offer_request_wm.class}
/// [WidgetModel] for [OfferRequestScreen].
/// {@endtemplate}
final class OfferRequestWM extends WidgetModel<OfferRequestScreen, OfferRequestModel>  implements IOfferRequestWM {

  /// {@macro offer_request_wm.class}
  OfferRequestWM(super._model);
}
