import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/features/app/app_flow.dart';
import 'package:everlook_mobile/features/auth/presentation/auth_flow.dart';
import 'package:everlook_mobile/features/main_page.dart';
import 'package:everlook_mobile/features/notify/presentation/notify_flow.dart';
import 'package:everlook_mobile/features/profile/presentation/profile_flow.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/recovery_password_flow.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'app_route_paths.dart';
import 'auth_guard.dart';

part 'app_router.gr.dart';

/// {@template router.class}
/// Main point of the application navigation.
/// {@endtemplate}
@AutoRouterConfig(
  replaceInRouteName: 'Flow,Route',
)
class AppRouter extends _$AppRouter {
  @override
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppRoute.page,
          initial: true,
          guards: [AuthGuard()],
          children: [
            CustomRoute(
              barrierColor: Colors.white,
              page: HomeRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: OffersRoute.page,
              initial: true,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: NotifyRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: MenuRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: ProfileRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: ActivitiesRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: FavoritesRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: MyOfferRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: NewJobRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: OfferRequestRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: RejectedOffersRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: ReviewsRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: SettingsRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: SupportRoute.page,
            ),
            CustomRoute(
              barrierColor: Colors.white,
              page: RecoveryPasswordRoute.page,
            ),
          ],
        ),
        CustomRoute(
          barrierColor: Colors.white,
          page: AuthRoute.page,
          keepHistory: false,
        ),
      ];
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
