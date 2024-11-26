import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template profile_scope.class}
/// Implementation of [IProfileScope].
/// {@endtemplate}
final class ProfileScope extends DisposableObject implements IProfileScope {
  @override
  late final IAppScope appScope;

  /// {@macro profile_scope.class}
  ProfileScope(this.appScope);
}

/// Scope dependencies of the Profile feature.
abstract interface class IProfileScope implements IDisposableObject {
  /// ProfileRepository.
  IAppScope get appScope;
}
