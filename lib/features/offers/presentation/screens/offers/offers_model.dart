import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/offers/domain/repositories/i_offers_repository.dart';
import 'package:everlook_mobile/features/offers/presentation/screens/offers/offers_screen.dart';

/// {@template offers_model.class}
/// [ElementaryModel] for [OffersScreen].
/// {@endtemplate}
final class OffersModel extends ElementaryModel {
  // ignore: unused_field
  final IOffersRepository _repository;

  /// {@macro offers_model.class}
  OffersModel({
    required IOffersRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
