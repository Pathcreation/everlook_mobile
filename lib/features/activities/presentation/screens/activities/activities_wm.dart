import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/activities/di/activities_scope.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_model.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [ActivitiesWM].
ActivitiesWM defaultActivitiesWMFactory(BuildContext context) {
  final scope = context.read<IActivitiesScope>();

  return ActivitiesWM(ActivitiesModel(repository: scope.repository));
}

/// Interface for [ActivitiesWM].
abstract interface class IActivitiesWM implements IWidgetModel {}

/// {@template activities_wm.class}
/// [WidgetModel] for [ActivitiesScreen].
/// {@endtemplate}
final class ActivitiesWM extends WidgetModel<ActivitiesScreen, ActivitiesModel>
    implements IActivitiesWM {
  /// {@macro activities_wm.class}
  ActivitiesWM(super._model);
}
