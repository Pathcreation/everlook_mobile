import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/my_offer/presentation/screens/my_offer/my_offer_wm.dart';

/// {@template my_offer_screen.class}
/// MyOfferScreen.
/// {@endtemplate}
class MyOfferScreen extends ElementaryWidget<IMyOfferWM> {
  /// {@macro my_offer_screen.class}
  const MyOfferScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultMyOfferWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IMyOfferWM wm) {
    return const Placeholder();
  }
}
