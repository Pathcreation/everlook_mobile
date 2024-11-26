import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/my_offer/domain/repositories/i_my_offer_repository.dart';
import 'package:everlook_mobile/features/my_offer/presentation/screens/my_offer/my_offer_screen.dart';

/// {@template my_offer_model.class}
/// [ElementaryModel] for [MyOfferScreen].
/// {@endtemplate}
final class MyOfferModel extends ElementaryModel {
  // ignore: unused_field
  final IMyOfferRepository _repository;

  /// {@macro my_offer_model.class}
  MyOfferModel({
    required IMyOfferRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
