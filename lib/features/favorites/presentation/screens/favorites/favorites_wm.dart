import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/favorites/di/favorites_scope.dart';
import 'package:everlook_mobile/features/favorites/presentation/screens/favorites/favorites_model.dart';
import 'package:everlook_mobile/features/favorites/presentation/screens/favorites/favorites_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [FavoritesWM].
FavoritesWM defaultFavoritesWMFactory(BuildContext context) {
  final scope = context.read<IFavoritesScope>();

  return FavoritesWM(FavoritesModel(repository: scope.repository));
}

/// Interface for [FavoritesWM].
abstract interface class IFavoritesWM  implements IWidgetModel {}

/// {@template favorites_wm.class}
/// [WidgetModel] for [FavoritesScreen].
/// {@endtemplate}
final class FavoritesWM extends WidgetModel<FavoritesScreen, FavoritesModel>  implements IFavoritesWM {

  /// {@macro favorites_wm.class}
  FavoritesWM(super._model);
}
