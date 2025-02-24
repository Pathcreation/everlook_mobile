import 'package:everlook_mobile/source/imports.dart';

/// AppTheme
abstract class AppTheme {
  AppTheme._();

  static ThemeData getTheme({
    required String locale,
  }) {
    String fontFamily = locale == 'ar' ? "Prompt" : "Prompt";
    double fontSizeCoef = locale == 'ar' ? 1.1 : 1;
    return ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: fontSizeCoef * 24.0,
          color: AppColors.darkGrey,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 18.0,
          color: AppColors.darkGrey,
          height: 1.22,
        ),
        headlineSmall: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w300,
          fontSize: fontSizeCoef * 16.0,
          color: AppColors.darkGrey,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 16.0,
          color: AppColors.darkGrey,
        ),
        titleMedium: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: fontSizeCoef * 14.0,
          color: AppColors.darkGrey,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: fontSizeCoef * 18,
          color: AppColors.darkGrey,
        ),
        labelLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 19,
          color: AppColors.darkGrey,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: fontSizeCoef * 15.0,
          color: AppColors.darkGrey,
        ),
        labelMedium: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 17.0,
          color: AppColors.darkGrey,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.normal,
          fontSize: fontSizeCoef * 13.0,
          color: AppColors.darkGrey,
        ),
      ),
      scaffoldBackgroundColor: AppColors.background,
      useMaterial3: true,
      splashColor: Colors.transparent,
      canvasColor: AppColors.background,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        inversePrimary: AppColors.white,
        primaryContainer: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainer,
        tertiary: AppColors.darkGrey,
        tertiaryContainer: AppColors.grey,
        tertiaryFixed: AppColors.lightGrey,
        tertiaryFixedDim: AppColors.ultraLightGrey,
        error: AppColors.error,
        onError: AppColors.pink,
        surface: AppColors.background,
        onSurface: AppColors.secondary,
        scrim: AppColors.yellow,
        outline: AppColors.green,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primary,
      ),
      menuBarTheme: const MenuBarThemeData(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(
            Color(0xFF505052),
          ),
        ),
      ),

      /// Divider theme
      dividerTheme: const DividerThemeData(
        color: AppColors.ultraLightGrey,
        indent: 0,
        endIndent: 0,
        thickness: 1,
      ),

      /// Slider theme
      sliderTheme: SliderThemeData(
        trackShape: const RectangularSliderTrackShape(),
        trackHeight: 2,
        overlayShape: SliderComponentShape.noThumb,
        activeTrackColor: const Color(0xffef615c),
        activeTickMarkColor: const Color(0xffef615c),
        inactiveTrackColor: const Color(0xffc0c0c0),
        inactiveTickMarkColor: const Color(0xffc0c0c0),
        thumbColor: const Color(0xffb04270),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 11.5),
      ),

      datePickerTheme: const DatePickerThemeData(
        backgroundColor: AppColors.background,
        todayBorder: BorderSide.none,
      ),

      // dropdownMenuTheme: DropdownMenuThemeData(
      //
      // ),

      expansionTileTheme: ExpansionTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
        ),
      ),

      /// InputDecoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.white,
        prefixIconColor: AppColors.primary,
        suffixIconColor: AppColors.primary,
        isDense: true,
        isCollapsed: false,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minHeight: 38,
          minWidth: double.infinity,
          maxWidth: double.infinity,
        ),
        border: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.onSecondary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.error,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.secondary,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.error,
          ),
        ),
      ),

      /// TextButton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.background,
          backgroundColor: AppColors.primary,
          textStyle: TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.w500,
            fontSize: fontSizeCoef * 15.0,
            color: AppColors.darkGrey,
          ),
        ),
      ),

      /// ElevatedButton theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.secondary,
          foregroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        //   style: const ButtonStyle().copyWith(
        //     alignment: Alignment.center,
        //     shape: const MaterialStatePropertyAll(
        //       RoundedRectangleBorder(
        //         borderRadius: AppTheme.circularRadius,
        //       ),
        //     ),
        //     padding: const MaterialStatePropertyAll(
        //       EdgeInsets.symmetric(
        //         horizontal: AppTheme.offset,
        //         vertical: AppTheme.offset / 2,
        //       ),
        //     ),
        //     elevation: MaterialStateProperty.resolveWith(
        //           (states) {
        //         if (states.contains(MaterialState.disabled)) return 0;
        //         if (states.contains(MaterialState.hovered)) {
        //           return AppTheme.elevation;
        //         }
        //         return 0;
        //       },
        //     ),
        //     side: MaterialStateProperty.resolveWith(
        //           (states) {
        //         if (states.contains(MaterialState.disabled)) {
        //           return BorderSide(width: 1, color: AppColors.colorScheme.outline);
        //         }
        //         if (states.contains(MaterialState.hovered)) return BorderSide.none;
        //         return BorderSide.none;
        //       },
        //     ),
        //     backgroundColor: MaterialStateProperty.resolveWith(
        //           (states) {
        //         if (states.contains(MaterialState.disabled)) {
        //           return AppColors.colorScheme.onPrimary;
        //         }
        //         if (states.contains(MaterialState.hovered)) {
        //           return AppColors.colorScheme.primary.withOpacity(0.7);
        //         }
        //         return AppColors.colorScheme.primary;
        //       },
        //     ),
        //     shadowColor: MaterialStateProperty.resolveWith(
        //           (states) {
        //         if (states.contains(MaterialState.disabled)) {
        //           return AppColors.colorScheme.shadow;
        //         }
        //         if (states.contains(MaterialState.hovered)) {
        //           return AppColors.colorScheme.primary;
        //         }
        //         return AppColors.colorScheme.shadow;
        //       },
        //     ),
        //   ),
      ),

      /// Appbar theme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.lightGrey,
        foregroundColor: AppColors.darkGrey,
        scrolledUnderElevation: 0,
      ),

      ///  Navbar theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        backgroundColor: AppColors.lightGrey.withOpacity(0.4),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 9.0,
          color: AppColors.white,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 9.0,
          color: AppColors.white,
        ),
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondary,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryContainer,
        foregroundColor: Colors.white,
        iconSize: 30,
        sizeConstraints: const BoxConstraints(
          minWidth: 54,
          maxWidth: 54,
          minHeight: 54,
          maxHeight: 54,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 6,
        ),
        visualDensity: VisualDensity.compact,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 16.0,
          color: AppColors.darkGrey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      /// Chip theme
      chipTheme: ChipThemeData(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 0,
        ),
        labelPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 0,
        ),
        backgroundColor: AppColors.white,
        disabledColor: AppColors.white,
        selectedColor: AppColors.onPrimary,
        checkmarkColor: AppColors.primary,
        showCheckmark: false,
        elevation: 0,
        labelStyle: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 15.0,
          color: AppColors.darkGrey,
        ),
        secondaryLabelStyle: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSizeCoef * 15.0,
          color: AppColors.darkGrey,
        ),
        side: const BorderSide(
          width: 1,
          color: Colors.transparent,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
        ),
      ),

      /// Card theme
      // cardTheme: CardTheme(
      //   clipBehavior: Clip.hardEdge,
      //   color: AppColors.colorScheme.onPrimary,
      //   elevation: AppTheme.elevation,
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: AppTheme.circularRadius,
      //   ),
      // ),

      /// Checkbox theme
      // checkboxTheme: CheckboxThemeData(
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(2)),
      //   ),
      //   checkColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return AppColors.colorScheme.onPrimary;
      //     }
      //     if (states.contains(MaterialState.disabled)) {
      //       return AppColors.colorScheme.outline;
      //     }
      //     if (states.contains(MaterialState.hovered)) {
      //       return AppColors.colorScheme.primary.withOpacity(0.3);
      //     }
      //     return AppColors.colorScheme.primary;
      //   }),
      //   side: BorderSide(width: 1, color: AppColors.colorScheme.outline),
      // ),

      /// Switch theme
      // switchTheme: SwitchThemeData(
      //   thumbColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return AppColors.colorScheme.onPrimary;
      //     }
      //     if (states.contains(MaterialState.disabled)) {
      //       return AppColors.colorScheme.outline;
      //     }
      //     if (states.contains(MaterialState.focused)) {
      //       return AppColors.colorScheme.onPrimary;
      //     }
      //     if (states.contains(MaterialState.hovered)) {
      //       return AppColors.colorScheme.onPrimary;
      //     }
      //     return AppColors.colorScheme.onPrimary;
      //   }),
      //   trackColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return AppColors.colorScheme.onError;
      //     }
      //     if (states.contains(MaterialState.disabled)) {
      //       return AppColors.colorScheme.outline;
      //     }
      //     if (states.contains(MaterialState.hovered)) {
      //       return AppColors.colorScheme.outline;
      //     }
      //     return AppColors.colorScheme.outline;
      //   }),
      // ),

      /// RadioButton theme
      // radioTheme: RadioThemeData(
      //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //   fillColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.disabled)) {
      //       return AppColors.colorScheme.outline;
      //     }
      //     if (states.contains(MaterialState.selected)) {
      //       return AppColors.colorScheme.primary;
      //     }
      //     if (states.contains(MaterialState.focused)) {
      //       return AppColors.colorScheme.primary;
      //     }
      //     if (states.contains(MaterialState.hovered)) {
      //       return AppColors.colorScheme.primary;
      //     }
      //     return AppColors.colorScheme.outline;
      //   }),
      //   visualDensity: const VisualDensity(
      //     horizontal: VisualDensity.minimumDensity,
      //     vertical: VisualDensity.minimumDensity,
      //   ),
      // ),

      /// Progress Indicator theme
      // progressIndicatorTheme: ProgressIndicatorThemeData(
      //   color: AppColors.colorScheme.primary,
      //   linearMinHeight: 1,
      //   refreshBackgroundColor: AppColors.colorScheme.outline,
      // ),

      /// Timepicker theme
      // timePickerTheme: TimePickerThemeData(
      //   backgroundColor: AppColors.colorScheme.background,
      // ),

      /// Drawer theme
      // drawerTheme: const DrawerThemeData(
      //   elevation: AppTheme.elevation,
      // ),

      /// Date theme
      // dataTableTheme: const DataTableThemeData(
      //   headingTextStyle: TextStyle(
      //     // color: AppColors.textDark,
      //     fontWeight: FontWeight.w700,
      //   ),
      // ),

      /// Icon theme
      // iconTheme: IconThemeData(
      //   color: AppColors.colorScheme.primary,
      //   size: AppTheme.iconSize,
      // ),

      /// TabBar theme
      // navigationBarTheme: NavigationBarThemeData(
      //   backgroundColor: AppColors.colorScheme.primary,
      //   labelTextStyle: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return const TextStyle(
      //         fontSize: 10,
      //         fontWeight: FontWeight.w500,
      //         letterSpacing: -0.5,
      //       );
      //     }
      //     return const TextStyle(
      //       fontSize: 10,
      //       fontWeight: FontWeight.w700,
      //       letterSpacing: -0.5,
      //     );
      //   }),
      // ),

      ///  FloatButton theme
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   elevation: AppTheme.elevation * 2,
      //   // iconSize: 55,
      //   // sizeConstraints: BoxConstraints(minWidth: 75, minHeight: 75, maxWidth: 75, maxHeight: 75),
      // ),

      /// Dialog theme
      // dialogTheme: DialogTheme(
      //   backgroundColor: AppColors.colorScheme.outline,
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: AppTheme.circularRadius,
      //   ),
      // ),
    );
  }
}

/// ElevatedButton deep theme
//
// ButtonStyle elevatedButtonOnError = const ButtonStyle().copyWith(
//   alignment: Alignment.center,
//   shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
//     borderRadius: AppTheme.circularRadius,
//   )),
//   padding: const MaterialStatePropertyAll(EdgeInsets.all(AppTheme.offset)),
//   elevation: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) return 0;
//     if (states.contains(MaterialState.hovered)) return AppTheme.elevation;
//     return 0;
//   }),
//   side: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return BorderSide(width: 1, color: AppColors.colorScheme.outline);
//     }
//     if (states.contains(MaterialState.hovered)) return BorderSide.none;
//     return BorderSide.none;
//   }),
//   backgroundColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.onPrimary;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.onError.withOpacity(0.7);
//     }
//     return AppColors.colorScheme.onError;
//   }),
//   shadowColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.shadow;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.onError;
//     }
//     return AppColors.colorScheme.shadow;
//   }),
// );
// ButtonStyle elevatedButtonError = const ButtonStyle().copyWith(
//   alignment: Alignment.center,
//   shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
//     borderRadius: AppTheme.circularRadius,
//   )),
//   padding: const MaterialStatePropertyAll(EdgeInsets.all(AppTheme.offset)),
//   elevation: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) return 0;
//     if (states.contains(MaterialState.hovered)) return AppTheme.elevation;
//     return 0;
//   }),
//   side: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return BorderSide(width: 1, color: AppColors.colorScheme.outline);
//     }
//     if (states.contains(MaterialState.hovered)) return BorderSide.none;
//     return BorderSide.none;
//   }),
//   backgroundColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.onPrimary;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.error.withOpacity(0.7);
//     }
//     return AppColors.colorScheme.error;
//   }),
//   shadowColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.shadow;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.error;
//     }
//     return AppColors.colorScheme.shadow;
//   }),
// );
// ButtonStyle elevatedButtonDisabled = const ButtonStyle().copyWith(
//   alignment: Alignment.center,
//   shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
//     borderRadius: AppTheme.circularRadius,
//   )),
//   padding: const MaterialStatePropertyAll(EdgeInsets.all(AppTheme.offset)),
//   elevation: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) return 0;
//     if (states.contains(MaterialState.hovered)) return AppTheme.elevation;
//     return 0;
//   }),
//   side: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return BorderSide(width: 1, color: AppColors.colorScheme.outline);
//     }
//     if (states.contains(MaterialState.hovered)) return BorderSide.none;
//     return BorderSide(width: 1, color: AppColors.colorScheme.outline);
//   }),
//   backgroundColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.outline;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.outline.withOpacity(0.7);
//     }
//     return AppColors.colorScheme.onPrimary;
//   }),
//   foregroundColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.onPrimary;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.onPrimary.withOpacity(0.7);
//     }
//     return AppColors.colorScheme.outline;
//   }),
//   shadowColor: MaterialStateProperty.resolveWith((states) {
//     if (states.contains(MaterialState.disabled)) {
//       return AppColors.colorScheme.onPrimary;
//     }
//     if (states.contains(MaterialState.hovered)) {
//       return AppColors.colorScheme.onPrimary;
//     }
//     return AppColors.colorScheme.shadow;
//   }),
// );
