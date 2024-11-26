import 'package:everlook_mobile/features/settings/data/repositories/settings_repository.dart';
import 'package:everlook_mobile/features/settings/domain/repositories/i_settings_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template settings_scope.class}
/// Implementation of [ISettingsScope].
/// {@endtemplate}
final class SettingsScope extends DisposableObject implements ISettingsScope {
  @override
  late final ISettingsRepository repository;

  /// Factory constructor for [ISettingsScope].
  factory SettingsScope.create() {
    return SettingsScope(const SettingsRepository());
  }

  /// {@macro settings_scope.class}
  SettingsScope(this.repository);
}

/// Scope dependencies of the Settings feature.
abstract interface class ISettingsScope implements IDisposableObject {
  /// SettingsRepository.
  ISettingsRepository get repository;
}
