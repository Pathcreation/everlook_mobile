import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/favorites/presentation/screens/favorites/favorites_wm.dart';

/// {@template favorites_screen.class}
/// FavoritesScreen.
/// {@endtemplate}
class FavoritesScreen extends ElementaryWidget<IFavoritesWM> {
  /// {@macro favorites_screen.class}
  const FavoritesScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultFavoritesWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IFavoritesWM wm) {
    return const Placeholder();
  }
}
