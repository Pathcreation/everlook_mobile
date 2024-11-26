import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_wm.dart';

/// {@template activities_screen.class}
/// ActivitiesScreen.
/// {@endtemplate}
class ActivitiesScreen extends ElementaryWidget<IActivitiesWM> {
  /// {@macro activities_screen.class}
  const ActivitiesScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultActivitiesWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IActivitiesWM wm) {
    return const Placeholder();
  }
}
