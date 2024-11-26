import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/home/di/home_scope.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_model.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [HomeWM].
HomeWM defaultHomeWMFactory(BuildContext context) {
  final scope = context.read<IHomeScope>();

  return HomeWM(HomeModel(repository: scope.repository));
}

/// Interface for [HomeWM].
abstract interface class IHomeWM  implements IWidgetModel {}

/// {@template home_wm.class}
/// [WidgetModel] for [HomeScreen].
/// {@endtemplate}
final class HomeWM extends WidgetModel<HomeScreen, HomeModel>  implements IHomeWM {

  /// {@macro home_wm.class}
  HomeWM(super._model);
}
