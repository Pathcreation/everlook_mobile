import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/colors/app_color_scheme.dart';
import 'package:everlook_mobile/ui_kit/text/app_text_scheme.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/menu/di/menu_scope.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_model.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_screen.dart';
import 'package:provider/provider.dart';

/// DI factory for [MenuWM].
MenuWM defaultMenuWMFactory(BuildContext context) {
  final scope = context.read<IMenuScope>();

  return MenuWM(MenuModel(repository: scope.repository));
}

/// Interface for [MenuWM].
abstract interface class IMenuWM with ThemeIModelMixin implements IWidgetModel {
  void pressJobs();

  void pressInProgress();

  void pressCanceled();

  void pressFinished();

  void pressOffers();

  void pressOfferRequest();

  void pressMyOffers();

  void pressRejected();

  void pressFavorites();

  void pressReviews();

  void pressSupport();

  void pressSettings();

  void pressProfile();

  void pressActivities();

  void pressSignOut();
}

/// {@template menu_wm.class}
/// [WidgetModel] for [MenuScreen].
/// {@endtemplate}
final class MenuWM extends WidgetModel<MenuScreen, MenuModel> with ThemeWMMixin implements IMenuWM {
  /// {@macro menu_wm.class}
  MenuWM(super._model);

  @override
  void pressJobs() {
    context.pushRoute(const OffersRoute());
  }

  @override
  void pressActivities() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressCanceled() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressFavorites() {
    context.pushRoute(const FavoritesRoute());
  }

  @override
  void pressFinished() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressInProgress() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressMyOffers() {
    context.pushRoute(const MyOfferRoute());
  }

  @override
  void pressOfferRequest() {
    context.pushRoute(const OfferRequestRoute());
  }

  @override
  void pressOffers() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressProfile() {
    context.pushRoute(const ProfileRoute());
  }

  @override
  void pressRejected() {
    context.pushRoute(const ActivitiesRoute());
  }

  @override
  void pressReviews() {
    context.pushRoute(const ReviewsRoute());
  }

  @override
  void pressSettings() {
    context.pushRoute(const SettingsRoute());
  }

  @override
  void pressSignOut() {
    context.pushRoute(AuthRoute(
      onResult: (value) {},
    ));
  }

  @override
  void pressSupport() {
    context.pushRoute(const SupportRoute());
  }
}
