import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/new_job/di/new_job_scope.dart';
import 'package:everlook_mobile/features/new_job/presentation/screens/new_job/new_job_model.dart';
import 'package:everlook_mobile/features/new_job/presentation/screens/new_job/new_job_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [NewJobWM].
NewJobWM defaultNewJobWMFactory(BuildContext context) {
  final scope = context.read<INewJobScope>();

  return NewJobWM(NewJobModel(repository: scope.repository));
}

/// Interface for [NewJobWM].
abstract interface class INewJobWM  implements IWidgetModel {}

/// {@template new_job_wm.class}
/// [WidgetModel] for [NewJobScreen].
/// {@endtemplate}
final class NewJobWM extends WidgetModel<NewJobScreen, NewJobModel>  implements INewJobWM {

  /// {@macro new_job_wm.class}
  NewJobWM(super._model);
}
