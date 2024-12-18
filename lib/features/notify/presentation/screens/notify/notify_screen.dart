import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/notify/presentation/screens/notify/notify_wm.dart';

/// {@template notify_screen.class}
/// NotifyScreen.
/// {@endtemplate}
class NotifyScreen extends ElementaryWidget<INotifyWM> {
  /// {@macro notify_screen.class}
  const NotifyScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultNotifyWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(INotifyWM wm) {
    return const Placeholder();
  }
}
