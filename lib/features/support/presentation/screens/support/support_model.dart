import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/support/domain/repositories/i_support_repository.dart';
import 'package:everlook_mobile/features/support/presentation/screens/support/support_screen.dart';

/// {@template support_model.class}
/// [ElementaryModel] for [SupportScreen].
/// {@endtemplate}
final class SupportModel extends ElementaryModel {
  // ignore: unused_field
  final ISupportRepository _repository;

  /// {@macro support_model.class}
  SupportModel({
    required ISupportRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
