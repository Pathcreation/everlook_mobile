import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'text_field/app_text_field.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.hintText,
      this.onBack,
      this.onCloseSearch,
      this.onChange,
      this.actions,
      this.showBackButton = true,
      this.isSearch = false,
      this.centerTitle = false,
      this.enableFocus = false,
      this.fontSize = 22,
      this.backgroundColor,
      this.secondTitle,
      this.titleSpacing = 16,
      this.textController})
      : preferredSize = const Size.fromHeight(60);

  final String title;
  final String? hintText;
  final double fontSize;
  final Function()? onBack;
  final Function()? onCloseSearch;
  final Function(String)? onChange;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool isSearch;
  final bool enableFocus;
  final bool centerTitle;
  final Color? backgroundColor;
  final Widget? secondTitle;
  final double titleSpacing;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.background,
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return AppBar(
      titleSpacing: titleSpacing,
      backgroundColor: backgroundColor ?? theme.colorScheme.inversePrimary,
      leadingWidth: showBackButton ? 60 : 0,
      leading: showBackButton
          ? IconButton(
              onPressed: () {
                if (onBack != null) {
                  onBack!();
                } else {
                  context.router.popAndPush(const OffersRoute());
                }
              },
              icon: SvgPicture.asset(
                Assets.icons.arrowBack,
                height: 16,
                color: Colors.black,
                width: 17,
              ),
            )
          : const SizedBox(),
      centerTitle: centerTitle,
      title: isSearch
          ? AppTextField(
              hintText: hintText ?? 'Введите имя пользователя',
              minHeight: 19,
              contentPadding: const EdgeInsets.only(bottom: 0),
              isDense: true,
              enableFocus: enableFocus,
              textController: textController ?? TextEditingController(),
              onChange: onChange,
              hintStyle: theme.textTheme.bodyMedium!.copyWith(
                fontSize: 16,
                color: theme.colorScheme.secondary,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                secondTitle ?? const SizedBox(),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.headlineLarge!.copyWith(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
      actions: [
        if (isSearch)
          IconButton(
            onPressed: onCloseSearch,
            icon: Icon(
              Icons.close,
              color: theme.colorScheme.secondary,
            ),
          ),
        if (!isSearch && actions != null) ...actions!,
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  @override
  final Size preferredSize;
}
