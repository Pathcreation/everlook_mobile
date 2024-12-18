// import 'dart:convert';
//
// import 'package:everlook_mobile/source/imports.dart';
//
// class Pages {
//   static const String auth = 'auth';
//   static const String main = 'main';
//   static const String settings = 'settings';
// }
//
// class AppRouter {
//   GoRouter get router => _goRouter;
//
//   AppRouter();
//
//   final GlobalKey<NavigatorState> _rootNavigatorKey =
//       GlobalKey<NavigatorState>(debugLabel: 'root');
//
//   String getInitialRoute() {
//     String path = '/${Pages.settings}';
//     final page = Preferences.getStringByKey('page');
//     Preferences.removeKey('page');
//     if (page != null) {
//       path = '/$page';
//     }
//     return path;
//   }
//
//   late final GoRouter _goRouter = GoRouter(
//     navigatorKey: _rootNavigatorKey,
//     initialLocation: getInitialRoute(),
//     routes: <RouteBase>[
//       GoRoute(
//         name: Pages.auth,
//         path: '/${Pages.auth}',
//         pageBuilder: (_, state) => _pageWrapper(
//           state,
//           child: const AuthScreen(),
//         ),
//       ),
//       GoRoute(
//         name: Pages.main,
//         path: '/',
//         pageBuilder: (_, state) => _pageWrapper(
//           state,
//           child: const ProfileScreen(),
//         ),
//       ),
//
//       GoRoute(
//         name: Pages.settings,
//         path: '/${Pages.settings}',
//         pageBuilder: (_, state) => _pageWrapper(
//           state,
//           child: const ProfileScreen(),
//         ),
//       ),
//     ],
//     redirect: (context, state) async {
//       final appScope = context.read<IAppScope>();
//       final notificationData =
//           Preferences.getStringByKey('notificationData') ?? '';
//       final page = (notificationData.isNotEmpty &&
//               notificationData.contains('page'))
//           ? jsonDecode(Preferences.getStringByKey('notificationData')!)['page']
//           : null;
//       final id = (notificationData.isNotEmpty &&
//               notificationData.contains('id'))
//           ? jsonDecode(Preferences.getStringByKey('notificationData')!)['id']
//           : null;
//       Preferences.removeKey('page');
//       Preferences.removeKey('id');
//       Preferences.removeKey('notificationData');
//       if (page != null) {
//         return '/$page'
//             "${id != null ? "/$id" : ''}";
//       }
//       if (state.uri.path.contains('https://corporate_sync.tech')) {
//         if (state.matchedLocation.contains(Pages.anotherUser)) {
//           return '/${Pages.anotherUser}/${state.pathParameters["id"]}';
//         }
//         return state.matchedLocation;
//       }
//       final tokens = await appScope.tokenStorage.read();
//       if (state.fullPath == '/settings' && tokens?.accessToken == null) {
//         return '/${Pages.auth}';
//       }
//       return null;
//     },
//     errorBuilder: (context, state) {
//       return Center(
//         child: Text(
//           state.error.toString(),
//         ),
//       );
//     },
//   );
// }
//
// CustomTransitionPage _pageWrapper(state, {required Widget child}) {
//   return CustomTransitionPage(
//     key: state.pageKey,
//     child: child,
//     reverseTransitionDuration: const Duration(milliseconds: 0),
//     transitionDuration: const Duration(milliseconds: 0),
//     transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
//   );
// }
//
// CustomTransitionPage _sliderPageWrapper(state, {required Widget child}) {
//   return CustomTransitionPage(
//     key: state.pageKey,
//     child: child,
//     reverseTransitionDuration: const Duration(milliseconds: 400),
//     transitionDuration: const Duration(milliseconds: 1000),
//     transitionsBuilder: (_, a, __, c) {
//       a = CurvedAnimation(
//           curve: Curves.fastLinearToSlowEaseIn,
//           parent: a,
//           reverseCurve: Curves.fastOutSlowIn);
//       return SlideTransition(
//         position:
//             Tween(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
//                 .animate(a),
//         child: c,
//       );
//     },
//   );
// }
//
// class SliderTransition extends PageRouteBuilder {
//   final Widget page;
//
//   SliderTransition(this.page)
//       : super(
//           pageBuilder: (context, animation, anotherAnimation) => page,
//           transitionDuration: const Duration(milliseconds: 1000),
//           reverseTransitionDuration: const Duration(milliseconds: 400),
//           transitionsBuilder: (context, animation, anotherAnimation, child) {
//             animation = CurvedAnimation(
//                 curve: Curves.fastLinearToSlowEaseIn,
//                 parent: animation,
//                 reverseCurve: Curves.fastOutSlowIn);
//             return SlideTransition(
//               position: Tween(
//                       begin: const Offset(1.0, 0.0),
//                       end: const Offset(0.0, 0.0))
//                   .animate(animation),
//               child: page,
//             );
//           },
//         );
// }
