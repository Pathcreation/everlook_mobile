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
      this.fontSize = 24,
      this.backgroundColor = AppColors.background,
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
  final Color backgroundColor;
  final Widget? secondTitle;
  final double titleSpacing;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // systemNavigationBarColor: const Color(0xFF262628),
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        // statusBarColor: backgroundColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return AppBar(
      titleSpacing: titleSpacing,
      backgroundColor: backgroundColor,
      leadingWidth: showBackButton ? 40 : 0,
      leading: showBackButton
          ? IconButton(
              onPressed: () {
                if (onBack != null) {
                  onBack!();
                } else {
                  Navigator.pop(context);
                }
              },
              icon: Icon(Icons.keyboard_arrow_left),
            )
          : const SizedBox(),
      centerTitle: centerTitle,
      title: isSearch
          ? AppTextField(
              hintText: hintText ?? 'Введите имя пользователя',
              height: 25,
              minHeight: 19,
              contentPadding: const EdgeInsets.only(bottom: 0),
              isDense: true,
              enableFocus: enableFocus,
              textController: textController ?? TextEditingController(),
              onChange: onChange,
              hintStyle: theme.textTheme.bodyMedium!.copyWith(
                fontSize: 16,
                color: AppColors.additional2,
              ),
              showBorder: false,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                secondTitle ?? const SizedBox(),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.titleLarge!.copyWith(
                      fontSize: fontSize,
                      color: AppColors.white,
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
            icon: const Icon(
              Icons.close,
              color: AppColors.additional1,
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
