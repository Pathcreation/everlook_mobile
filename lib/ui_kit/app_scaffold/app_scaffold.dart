import 'package:everlook_mobile/source/imports.dart';

import 'app_scaffold_view_model.dart';
import 'constants/constants.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.navBar = true,
    this.saveAreaTop = true,
    this.saveAreaBottom = false,
    this.showTutorial = false,
    this.horizontalPadding = 0,
    this.systemNavBarColor = Colors.white,
    this.appBar,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);

  final Widget child;
  final bool navBar;
  final bool saveAreaTop;
  final bool saveAreaBottom;
  final double horizontalPadding;
  final Color systemNavBarColor;
  final PreferredSizeWidget? appBar;
  final bool showTutorial;
  final bool? resizeToAvoidBottomInset;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  Map<String, dynamic> map = {};
  String? token;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {

    });
    super.initState();
  }

  void notificationRouter() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
      () async {
        if (mounted) {
          // context.goNamed(
          //   map["page"],
          //   pathParameters: {
          //     if (map.containsKey("id")) "id": map["id"]!,
          //   },
          // );
          map.clear();
        }
      },
    );
  }

  void getToken(BuildContext context) async {
    final appScope = context.read<IAppScope>();
    final tokens = await appScope.tokenStorage.read();
    token = tokens?.access;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final viewModel = Provider.of<AppScaffoldViewModel>(context);
    getToken(context);
    return SafeArea(
      top: widget.saveAreaTop,
      bottom: widget.saveAreaBottom,
      child: Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        appBar: widget.appBar,
        body: widget.child,
        bottomNavigationBar: widget.navBar
            ? DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.onBackground.withOpacity(0.15),
                      // blurRadius: 30,
                    )
                  ],
                ),
                child: BottomNavigationBar(
                  currentIndex: viewModel.calculateSelectedIndex(context),
                  onTap: (int index) => viewModel.onItemTapped(
                    index,
                    context,
                    token,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[0].icons!,
                          active: false,
                          theme: theme,
                        ),
                      ),
                      activeIcon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[0].icons!,
                          active: true,
                          theme: theme,
                        ),
                      ),
                      label: navbarList()[0].label,
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[1].icons!,
                          active: false,
                          theme: theme,
                        ),
                      ),
                      activeIcon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[1].icons!,
                          active: true,
                          theme: theme,
                        ),
                      ),
                      label: navbarList()[1].label,
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            right: 5,
                            left: 5,
                          ),
                          child: icons(
                            iconsType: navbarList()[2].icons!,
                            active: false,
                            theme: theme,
                          ),
                        ),
                      ),
                      activeIcon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            right: 5,
                            left: 5,
                          ),
                          child: icons(
                            iconsType: navbarList()[2].icons!,
                            active: true,
                            theme: theme,
                          ),
                        ),
                      ),
                      label: navbarList()[2].label,
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[3].icons!,
                          active: false,
                          theme: theme,
                        ),
                      ),
                      activeIcon: Padding(
                        key: UniqueKey(),
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          top: 5,
                        ),
                        child: icons(
                          iconsType: navbarList()[3].icons!,
                          active: true,
                          theme: theme,
                        ),
                      ),
                      label: navbarList()[3].label,
                    ),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
