import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/{{name.snakeCase()}}/di/{{name.snakeCase()}}_scope.dart';
import 'package:everlook_mobile/features/{{name.snakeCase()}}/presentation/screens/{{name.snakeCase()}}/{{name.snakeCase()}}_model.dart';
import 'package:everlook_mobile/features/{{name.snakeCase()}}/presentation/screens/{{name.snakeCase()}}/{{name.snakeCase()}}_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [{{name.pascalCase()}}WM].
{{name.pascalCase()}}WM default{{name.pascalCase()}}WMFactory(BuildContext context) {
  final scope = context.read<I{{name.pascalCase()}}Scope>();

  return {{name.pascalCase()}}WM({{name.pascalCase()}}Model(repository: scope.repository));
}

/// Interface for [{{name.pascalCase()}}WM].
abstract interface class I{{name.pascalCase()}}WM with ThemeIModelMixin  implements IWidgetModel {}

/// {@template {{name.snakeCase()}}_wm.class}
/// [WidgetModel] for [{{name.pascalCase()}}Screen].
/// {@endtemplate}
final class {{name.pascalCase()}}WM extends WidgetModel<{{name.pascalCase()}}Screen, {{name.pascalCase()}}Model> with ThemeWMMixin implements I{{name.pascalCase()}}WM {

  /// {@macro {{name.snakeCase()}}_wm.class}
  {{name.pascalCase()}}WM(super._model);
}
