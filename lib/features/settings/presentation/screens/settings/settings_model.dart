import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/settings/domain/repositories/i_settings_repository.dart';
import 'package:everlook_mobile/features/settings/presentation/screens/settings/settings_screen.dart';

/// {@template settings_model.class}
/// [ElementaryModel] for [SettingsScreen].
/// {@endtemplate}
final class SettingsModel extends ElementaryModel {
  // ignore: unused_field
  final ISettingsRepository _repository;

  /// {@macro settings_model.class}
  SettingsModel({
    required ISettingsRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
