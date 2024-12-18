import 'dart:ui';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';

class MainFlow extends StatefulWidget {
  const MainFlow({Key? key}) : super(key: key);

  @override
  State<MainFlow> createState() => _MainFlowState();
}

class _MainFlowState extends State<MainFlow> {
  Map<String, dynamic> map = {};
  String? token;
  UserModel? user;
  int activeIndex = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
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
    token = tokens?.token;
    user = appScope.profileRepository.currentUser;
  }

  Widget avatar({
    required UserModel? user,
    required BuildContext context,
  }) {
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            border: Border.all(
              width: 3,
              color: (user?.isVerified ?? true) ? theme.colorScheme.primary : Colors.transparent,
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: user?.avatar ?? '',
            imageBuilder: (context, imageProvider) => Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return const Opacity(
                opacity: 0.3,
                child: CircularProgressIndicator(),
              );
            },
            errorWidget: (context, url, error) {
              return const Icon(Icons.account_circle_outlined);
            },
          ),
        ),
        Positioned(
          top: 3,
          left: -10,
          child: Container(
            height: 16,
            width: 28,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'PRO',
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 10,
                  color: theme.colorScheme.surface,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    getToken(context);
    context.router.addListener(() {
      print('CURRENT_ROUTE: ${context.router.currentPath}');
    });
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: true,
        body: AutoRouter(
          builder: (ctx, widget) {
            return widget;
          },
        ),
        // floatingActionButton: context.router.currentPath == '/menu-route'
        //     ? const SizedBox()
        //     : FloatingActionButton(
        //         child: SvgPicture.asset(
        //           Assets.icons.burgerIcon,
        //           color: theme.colorScheme.surface,
        //           width: 20,
        //         ),
        //         onPressed: () {
        //           context.router.push(const MenuRoute());
        //         },
        //       ),
        // bottomNavigationBar: DecoratedBox(
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: theme.colorScheme.onBackground.withOpacity(0.15),
        //         // blurRadius: 30,
        //       )
        //     ],
        //   ),
        //   child: ClipRRect(
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(
        //         sigmaX: 10.0,
        //         sigmaY: 10.0,
        //       ),
        //       child: BottomNavigationBar(
        //         currentIndex: activeIndex,
        //         onTap: (index) {
        //           setState(() {
        //             activeIndex = index;
        //           });
        //           if (activeIndex == 0) {
        //             context.router.push(const HomeRoute());
        //           }
        //           if (activeIndex == 1) {
        //             context.router.push(const OffersRoute());
        //           }
        //           if (activeIndex == 2) {
        //             context.router.push(const NotifyRoute());
        //           }
        //           if (activeIndex == 3) {
        //             context.router.push(const MenuRoute());
        //           }
        //         },
        //         type: BottomNavigationBarType.fixed,
        //         items: [
        //           BottomNavigationBarItem(
        //             icon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: Stack(
        //                 children: [
        //                   SvgPicture.asset(
        //                     Assets.icons.newJobBackground,
        //                     color: theme.colorScheme.secondary,
        //                   ),
        //                   SvgPicture.asset(
        //                     Assets.icons.newJobForeground,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             activeIcon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: Stack(
        //                 children: [
        //                   SvgPicture.asset(
        //                     Assets.icons.newJobBackground,
        //                     color: theme.colorScheme.primary,
        //                   ),
        //                   SvgPicture.asset(
        //                     Assets.icons.newJobForeground,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             label: 'New Job',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: SvgPicture.asset(
        //                 Assets.icons.offer,
        //                 color: theme.colorScheme.secondary,
        //                 height: 25,
        //                 width: 25,
        //               ),
        //             ),
        //             activeIcon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: SvgPicture.asset(
        //                 Assets.icons.offer,
        //                 color: theme.colorScheme.primary,
        //                 height: 25,
        //                 width: 25,
        //               ),
        //             ),
        //             label: 'Offers',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //               ),
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                   top: 5,
        //                   right: 5,
        //                   left: 5,
        //                 ),
        //                 child: SvgPicture.asset(
        //                   Assets.icons.notify,
        //                   color: theme.colorScheme.secondary,
        //                   height: 23,
        //                   width: 22,
        //                 ),
        //               ),
        //             ),
        //             activeIcon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //               ),
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                   top: 5,
        //                   right: 5,
        //                   left: 5,
        //                 ),
        //                 child: SvgPicture.asset(
        //                   Assets.icons.notify,
        //                   color: theme.colorScheme.primary,
        //                   height: 23,
        //                   width: 22,
        //                 ),
        //               ),
        //             ),
        //             label: 'Notify',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: avatar(
        //                 user: user,
        //                 context: context,
        //               ),
        //             ),
        //             activeIcon: Padding(
        //               key: UniqueKey(),
        //               padding: const EdgeInsets.only(
        //                 bottom: 5,
        //                 top: 5,
        //               ),
        //               child: avatar(
        //                 user: user,
        //                 context: context,
        //               ),
        //             ),
        //             label: '',
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
