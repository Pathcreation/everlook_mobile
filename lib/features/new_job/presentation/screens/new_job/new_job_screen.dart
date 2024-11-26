import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/new_job/presentation/screens/new_job/new_job_wm.dart';

/// {@template new_job_screen.class}
/// NewJobScreen.
/// {@endtemplate}
class NewJobScreen extends ElementaryWidget<INewJobWM> {
  /// {@macro new_job_screen.class}
  const NewJobScreen ({
    super.key,
    WidgetModelFactory wmFactory = defaultNewJobWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(INewJobWM wm) {
    return const Placeholder();
  }
}
