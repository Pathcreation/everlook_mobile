import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/features/auth/presentation/auth_flow.dart';
import 'package:everlook_mobile/features/main_page.dart';
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
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: AppRoutePaths.main,
          guards: [AuthGuard()],
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: AppRoutePaths.home,
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: AppRoutePaths.profile,
            ),
            AutoRoute(
              page: ActivitiesRoute.page,
            ),
            AutoRoute(
              page: FavoritesRoute.page,
            ),
            AutoRoute(
              page: MyOfferRoute.page,
            ),
            AutoRoute(
              page: NewJobRoute.page,
            ),
            AutoRoute(
              page: OfferRequestRoute.page,
            ),
            AutoRoute(
              page: OffersRoute.page,
            ),
            AutoRoute(
              page: MenuRoute.page,
            ),
            AutoRoute(
              page: RejectedOffersRoute.page,
            ),
            AutoRoute(
              page: ReviewsRoute.page,
            ),
            AutoRoute(
              page: SettingsRoute.page,
            ),
            AutoRoute(
              page: SupportRoute.page,
            ),
            // AutoRoute(
            //   page: AuthRoute.page,
            //   path: AppRoutePaths.auth,
            // ),
          ],
        ),
        AutoRoute(
          page: AuthRoute.page,
          path: AppRoutePaths.auth,
        ),
      ];
}
