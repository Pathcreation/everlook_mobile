import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_wm.dart';

/// {@template offers_screen.class}
/// OffersScreen.
/// {@endtemplate}
class OffersScreen extends ElementaryWidget<IOffersWM> {
  /// {@macro offers_screen.class}
  const OffersScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultOffersWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IOffersWM wm) {
    return const Placeholder();
  }
}
