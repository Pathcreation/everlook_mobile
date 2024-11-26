import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/support/presentation/screens/support/support_wm.dart';

/// {@template support_screen.class}
/// SupportScreen.
/// {@endtemplate}
class SupportScreen extends ElementaryWidget<ISupportWM> {
  /// {@macro support_screen.class}
  const SupportScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultSupportWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(ISupportWM wm) {
    return const Placeholder();
  }
}
