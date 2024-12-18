import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: true,
        body: child,
        floatingActionButton: context.router.currentPath == '/menu-route'
            ? const SizedBox()
            : FloatingActionButton(
                child: SvgPicture.asset(
                  Assets.icons.burgerIcon,
                  color: theme.colorScheme.surface,
                  width: 20,
                ),
                onPressed: () {
                  context.router.push(const MenuRoute());
                },
              ),
      ),
    );
  }
}
