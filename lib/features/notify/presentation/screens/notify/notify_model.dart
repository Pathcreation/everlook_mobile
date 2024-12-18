import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/notify/domain/repositories/i_notify_repository.dart';
import 'package:everlook_mobile/features/notify/presentation/screens/notify/notify_screen.dart';

/// {@template notify_model.class}
/// [ElementaryModel] for [NotifyScreen].
/// {@endtemplate}
final class NotifyModel extends ElementaryModel {
  // ignore: unused_field
  final INotifyRepository _repository;

  /// {@macro notify_model.class}
  NotifyModel({
    required INotifyRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
