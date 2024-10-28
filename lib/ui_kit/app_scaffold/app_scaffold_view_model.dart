import 'package:everlook_mobile/source/imports.dart';

class AppScaffoldViewModel extends ChangeNotifier {
  /// Calculates the index of the selected navbar item
  int calculateSelectedIndex(
    BuildContext context,
  ) {
    int index = 0;
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
