import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_wm.dart';

/// {@template home_screen.class}
/// HomeScreen.
/// {@endtemplate}
class HomeScreen extends ElementaryWidget<IHomeWM> {
  /// {@macro home_screen.class}
  const HomeScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultHomeWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IHomeWM wm) {
    return const Placeholder();
  }
}
