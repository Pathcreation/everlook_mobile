import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template profile_scope.class}
/// Implementation of [ISettingsScope].
/// {@endtemplate}
final class SettingsScope extends DisposableObject implements ISettingsScope {
  @override
  late final IAppScope appScope;

  /// {@macro profile_scope.class}
  SettingsScope(this.appScope);
}

/// Scope dependencies of the Profile feature.
abstract interface class ISettingsScope implements IDisposableObject {
  IAppScope get appScope;
}
