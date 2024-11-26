import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/offer_request/presentation/screens/offer_request/offer_request_wm.dart';

/// {@template offer_request_screen.class}
/// OfferRequestScreen.
/// {@endtemplate}
class OfferRequestScreen extends ElementaryWidget<IOfferRequestWM> {
  /// {@macro offer_request_screen.class}
  const OfferRequestScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultOfferRequestWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IOfferRequestWM wm) {
    return const Placeholder();
  }
}
