import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/home/domain/repositories/i_home_repository.dart';
import 'package:everlook_mobile/features/home/presentation/screens/home/home_screen.dart';

/// {@template home_model.class}
/// [ElementaryModel] for [HomeScreen].
/// {@endtemplate}
final class HomeModel extends ElementaryModel {
  // ignore: unused_field
  final IHomeRepository _repository;

  /// {@macro home_model.class}
  HomeModel({
    required IHomeRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
