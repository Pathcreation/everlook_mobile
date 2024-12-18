import 'package:everlook_mobile/features/notify/data/repositories/notify_repository.dart';
import 'package:everlook_mobile/features/notify/domain/repositories/i_notify_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template notify_scope.class}
/// Implementation of [INotifyScope].
/// {@endtemplate}
final class NotifyScope extends DisposableObject implements INotifyScope {
  @override
  late final INotifyRepository repository;

  /// Factory constructor for [INotifyScope].
  factory NotifyScope.create() {
    return NotifyScope(const NotifyRepository());
  }

  /// {@macro notify_scope.class}
  NotifyScope(this.repository);
}

/// Scope dependencies of the Notify feature.
abstract interface class INotifyScope implements IDisposableObject {
  /// NotifyRepository.
  INotifyRepository get repository;
}
