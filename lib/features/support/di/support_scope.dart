import 'package:everlook_mobile/features/support/data/repositories/support_repository.dart';
import 'package:everlook_mobile/features/support/domain/repositories/i_support_repository.dart';
import 'package:everlook_mobile/common/utils/disposable_object/disposable_object.dart';
import 'package:everlook_mobile/common/utils/disposable_object/i_disposable_object.dart';

/// {@template support_scope.class}
/// Implementation of [ISupportScope].
/// {@endtemplate}
final class SupportScope extends DisposableObject implements ISupportScope {
  @override
  late final ISupportRepository repository;

  /// Factory constructor for [ISupportScope].
  factory SupportScope.create() {
    return SupportScope(const SupportRepository());
  }

  /// {@macro support_scope.class}
  SupportScope(this.repository);
}

/// Scope dependencies of the Support feature.
abstract interface class ISupportScope implements IDisposableObject {
  /// SupportRepository.
  ISupportRepository get repository;
}
