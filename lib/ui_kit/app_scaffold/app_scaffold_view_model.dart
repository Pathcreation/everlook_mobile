import 'package:everlook_mobile/source/imports.dart';

class AppScaffoldViewModel extends ChangeNotifier {
  /// Calculates the index of the selected navbar item
  int calculateSelectedIndex(
    BuildContext context,
  ) {
    // final GoRouter route = GoRouter.of(context);
    // final RouteMatch lastMatch = route.routerDelegate.currentConfiguration.last;
    // final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
    //     ? lastMatch.matches
    //     : route.routerDelegate.currentConfiguration;
    // final String location = matchList.uri.toString().replaceAll('/', '');
    int index = 0;
    // if (location.startsWith(Pages.createChat)) {
    //   index = 0;
    // }
    // if (location.startsWith(Pages.chats) ||
    //     location.startsWith(Pages.addedChat)) {
    //   index = 1;
    // }
    // if (location.startsWith(Pages.individualChats)) {
    //   index = 2;
    // }
    // if (location.startsWith(Pages.profile) || location.startsWith(Pages.auth)) {
    //   index = 3;
    // }
    return index;
  }

  /// Happens when you press the item
  void onItemTapped(
    int index,
    BuildContext context,
    String? token,
  ) {
    switch (index) {
      case 0:
        // context.goNamed(token != null ? Pages.createChat : Pages.auth);
        break;
      case 1:
        // context.goNamed(token != null ? Pages.chats : Pages.auth);
        break;
      case 2:
        // context.pushNamed(token != null ? Pages.individualChats : Pages.auth);
        break;
      case 3:
        // context.goNamed(
        //   token != null ? Pages.profile : Pages.auth,
        // );
        break;
    }
  }
}
