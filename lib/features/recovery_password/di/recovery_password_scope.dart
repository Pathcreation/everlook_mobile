import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template recovery_password_scope.class}
/// Implementation of [IRecoveryPasswordScope].
/// {@endtemplate}
final class RecoveryPasswordScope extends DisposableObject implements IRecoveryPasswordScope {
  @override
  late final IAppScope appScope;

  /// {@macro recovery_password_scope.class}
  RecoveryPasswordScope(this.appScope);
}

/// Scope dependencies of the RecoveryPassword feature.
abstract interface class IRecoveryPasswordScope implements IDisposableObject {
  IAppScope get appScope;
}
