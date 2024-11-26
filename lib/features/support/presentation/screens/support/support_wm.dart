import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/support/di/support_scope.dart';
import 'package:everlook_mobile/features/support/presentation/screens/support/support_model.dart';
import 'package:everlook_mobile/features/support/presentation/screens/support/support_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [SupportWM].
SupportWM defaultSupportWMFactory(BuildContext context) {
  final scope = context.read<ISupportScope>();

  return SupportWM(SupportModel(repository: scope.repository));
}

/// Interface for [SupportWM].
abstract interface class ISupportWM  implements IWidgetModel {}

/// {@template support_wm.class}
/// [WidgetModel] for [SupportScreen].
/// {@endtemplate}
final class SupportWM extends WidgetModel<SupportScreen, SupportModel>  implements ISupportWM {

  /// {@macro support_wm.class}
  SupportWM(super._model);
}
