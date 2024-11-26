import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/rejected_offers/presentation/screens/rejected_offers/rejected_offers_wm.dart';

/// {@template rejected_offers_screen.class}
/// RejectedOffersScreen.
/// {@endtemplate}
class RejectedOffersScreen extends ElementaryWidget<IRejectedOffersWM> {
  /// {@macro rejected_offers_screen.class}
  const RejectedOffersScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultRejectedOffersWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IRejectedOffersWM wm) {
    return const Placeholder();
  }
}
