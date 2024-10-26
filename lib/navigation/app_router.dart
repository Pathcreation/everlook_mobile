import 'package:auto_route/auto_route.dart';
import 'package:everlook_mobile/features/home/presentation/home_flow.dart';

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
          page: HomeRoute.page,
          // path: AppRoutePaths.home,
          initial: true,
        ),
      ];
}
