import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/notify/di/notify_scope.dart';
import 'package:everlook_mobile/features/notify/presentation/screens/notify/notify_model.dart';
import 'package:everlook_mobile/features/notify/presentation/screens/notify/notify_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [NotifyWM].
NotifyWM defaultNotifyWMFactory(BuildContext context) {
  final scope = context.read<INotifyScope>();

  return NotifyWM(NotifyModel(repository: scope.repository));
}

/// Interface for [NotifyWM].
abstract interface class INotifyWM  implements IWidgetModel {}

/// {@template notify_wm.class}
/// [WidgetModel] for [NotifyScreen].
/// {@endtemplate}
final class NotifyWM extends WidgetModel<NotifyScreen, NotifyModel> with ThemeWMMixin implements INotifyWM {

  /// {@macro notify_wm.class}
  NotifyWM(super._model);
}
