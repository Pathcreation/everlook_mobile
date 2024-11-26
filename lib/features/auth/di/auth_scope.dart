import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template auth_scope.class}
/// Implementation of [IAuthScope].
/// {@endtemplate}
final class AuthScope extends DisposableObject implements IAuthScope {
  @override
  late final IAppScope appScope;

  /// {@macro auth_scope.class}
  AuthScope({
    required this.appScope,
  });
}

/// Scope dependencies of the Auth feature.
abstract interface class IAuthScope implements IDisposableObject {
  IAppScope get appScope;
}
