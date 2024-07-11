import 'package:dev/core/constant/app_color.dart';
import 'package:dev/core/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///This extension include the ThemeData inside the BuildContext
///
///It can be called this way:
///
///```dart
///context.lightThemeData();
///```
///
///Another must thing is to import `theme.dart`
extension AppThemeData on BuildContext {
  /// Styles for the light theme
  ThemeData lightThemeData() {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        dialogBackgroundColor: AppColors.whiteColor,
        colorScheme: const ColorScheme.light().copyWith(
          surfaceTint: AppColors.whiteColor,
          primary: AppColors.primaryColor,
          outline: AppColors.greyColor.shade200,
          primaryContainer: AppColors.whiteColor,
          secondaryContainer: AppColors.whiteColor,
        ),
        extensions: const [ColorExtensions.light],
        highlightColor: AppColors.primaryColor.opacity8,
        // textTheme: GoogleFonts.robotoTextTheme(),
        textTheme: AppTextTheme.lightTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            elevation: 3,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primaryColor),
          ),
        ),
        buttonTheme: const ButtonThemeData(buttonColor: AppColors.primaryColor),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => AppColors.primaryColor.shade400),
        ),
        unselectedWidgetColor: AppColors.greyColor,
        dividerTheme: DividerThemeData(
          color: AppColors.greyColor.shade100,
          thickness: 1,
        ),
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
        switchTheme: SwitchThemeData(
          thumbIcon: MaterialStateProperty.resolveWith((states) {
            if (!states.contains(MaterialState.selected)) {
              return Icon(
                Icons.circle,
                color: AppColors.greyColor.shade200,
                size: 24,
              );
            }
            return null;
          }),
          thumbColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.whiteColor;
            }

            return AppColors.whiteColor;
            // return AppColors.greyColor.shade200;
          }),
          trackColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primaryColor;
            }

            return AppColors.whiteColor;
          }),
          trackOutlineColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primaryColor;
            }

            return AppColors.greyColor.shade200;
          }),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.primaryColor.opacity8,
          side: BorderSide(color: AppColors.primaryColor.shade200),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFF03A9F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.bodyTextColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          color: AppColors.primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.whiteColor,
            statusBarColor: Colors.transparent,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.whiteColor),
        // platform: TargetPlatform.iOS,
        // splashFactory: CustomInkSparkle.splashFactory,
        //splashFactory: CustomSplash.splashFactory,
        timePickerTheme: const TimePickerThemeData(
            hourMinuteTextColor: AppColors.headingTextColor));
  }

  /// Styles for the dark theme
  ThemeData darkThemeData() {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.darkBackground,
        dialogBackgroundColor: AppColors.darkSecondary,
        canvasColor: AppColors.darkHeader,
        colorScheme: const ColorScheme.dark().copyWith(
          surfaceTint: AppColors.darkSecondary,
          primary: AppColors.primaryColor.shade700,
          outline: AppColors.greyColor.shade200,
          primaryContainer: AppColors.darkCardBackground,
          secondaryContainer: AppColors.darkSecondary,
          onPrimary: AppColors.whiteColor,
          surface: AppColors.darkBackground,
          onSurface: AppColors.whiteColor,
        ),
        extensions: const [ColorExtensions.dark],
        highlightColor: AppColors.primaryColor.opacity8,
        // textTheme: GoogleFonts.robotoTextTheme(),
        textTheme: AppTextTheme.darkTextTheme(),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.darkSecondary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            elevation: 3,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primaryColor),
          ),
        ),
        buttonTheme: const ButtonThemeData(buttonColor: AppColors.primaryColor),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => AppColors.primaryColor.shade400),
        ),
        unselectedWidgetColor: AppColors.greyColor,
        dividerTheme: DividerThemeData(color: AppColors.greyColor.opacity48),
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
        switchTheme: SwitchThemeData(
          thumbIcon: MaterialStateProperty.resolveWith((states) {
            if (!states.contains(MaterialState.selected)) {
              return Icon(
                Icons.circle,
                color: AppColors.greyColor.shade600,
                size: 24,
              );
            }

            return null;
          }),
          thumbColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.darkSecondary;
            }

            return AppColors.darkBackground;
          }),
          trackColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primaryColor;
            }

            return AppColors.darkBackground;
          }),
          trackOutlineColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.primaryColor;
            }

            return AppColors.greyColor.shade600;
          }),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.primaryColor.opacity8,
          side: BorderSide(color: AppColors.primaryColor.shade200),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFF03A9F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.darkHeader,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.darkHeader,
            statusBarColor: Colors.transparent,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.darkHeader),
        // platform: TargetPlatform.iOS,
        // splashFactory: CustomInkSparkle.splashFactory,
        //splashFactory: CustomSplash.splashFactory,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: AppColors.darkHeader,
          surfaceTintColor: AppColors.darkHeader,
        ),
        timePickerTheme: const TimePickerThemeData(
          hourMinuteTextColor: AppColors.whiteColor,
        ));
  }
}

///This extension will extend the `TextTheme` with new properties in our app.
///
///To use these new properties use the below example:
///```dart
///Theme.of(context).textTheme.buttonlg
///```
///
///`copyWith` method can be used with these properties.
///
///To use this extra properies, this `theme.dart` file must be imported
extension CustomAppTextTheme on TextTheme {
  //*All the extra fields for the TextTheme
  static final Expando<TextStyle> _buttonlg = Expando<TextStyle>();
  static final Expando<TextStyle> _buttondf = Expando<TextStyle>();
  static final Expando<TextStyle> _buttonsm = Expando<TextStyle>();
  static final Expando<TextStyle> _headlineExtraSmall = Expando<TextStyle>();
  static final Expando<TextStyle> _bodyExtraSmall = Expando<TextStyle>();
  static final Expando<TextStyle> _paragraph = Expando<TextStyle>();
  static final Expando<TextStyle> _placeholderdf = Expando<TextStyle>();

  //*All the getter methods for the values
  TextStyle get buttonlg =>
      _buttonlg[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1,
          color: AppColors.headingTextColor);
  TextStyle get buttondf =>
      _buttondf[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1,
          color: AppColors.headingTextColor);
  TextStyle get buttonsm =>
      _buttonsm[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1,
          color: AppColors.headingTextColor);
  TextStyle get headlineExtraSmall =>
      _headlineExtraSmall[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: AppColors.headingTextColor);
  TextStyle get bodyExtraSmall =>
      _bodyExtraSmall[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1.5,
          color: AppColors.bodyTextColor);
  TextStyle get paragraph =>
      _paragraph[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          height: 1.2,
          color: AppColors.bodyTextColor);
  TextStyle get placeholderdf =>
      _placeholderdf[this] ??
      const TextStyle(
          fontFamily: 'JobdeskFonts',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: .85,
          color: AppColors.bodyTextColor);

  //*All the setter methods for the values
  set buttonlg(TextStyle value) => _buttonlg[this] = value;
  set buttondf(TextStyle value) => _buttondf[this] = value;
  set buttonsm(TextStyle value) => _buttonsm[this] = value;
  set headlineExtraSmall(TextStyle value) => _headlineExtraSmall[this] = value;
  set bodyExtraSmall(TextStyle value) => _bodyExtraSmall[this] = value;
  set paragraph(TextStyle value) => _paragraph[this] = value;
  set placeholderdf(TextStyle value) => _placeholderdf[this] = value;
}

///This class contains two different Text themes
///
///`lightTextTheme`
///
///`darkTextTheme`
class AppTextTheme {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  //AppTextTheme._();

  ///This method consists all the text style of the light theme
  static TextTheme lightTextTheme() {
    return ThemeData.light().textTheme.copyWith(
          headlineLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 28,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.headingTextColor,
          ),
          headlineMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.headingTextColor,
          ),
          headlineSmall: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.headingTextColor,
          ),
          labelLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.headingTextColor,
          ),
          labelMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.headingTextColor,
          ),
          labelSmall: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.headingTextColor,
          ),
          bodyLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodyTextColor,
          ),
          bodyMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodyTextColor,
          ),
          bodySmall: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodyTextColor,
          ),
        );
  }

  ///This method consists all the text style of the dark theme
  static TextTheme darkTextTheme() {
    return ThemeData.dark().textTheme.copyWith(
          headlineLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 28,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.whiteColor,
          ),
          headlineMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.whiteColor,
          ),
          headlineSmall: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1.2,
            color: AppColors.whiteColor,
          ),
          labelLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.whiteColor,
          ),
          labelMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.whiteColor,
          ),
          labelSmall: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1,
            color: AppColors.whiteColor,
          ),
          bodyLarge: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodydark,
          ),
          bodyMedium: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodydark,
          ),
          bodySmall: const TextStyle(
            fontFamily: 'JobdeskFonts',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: AppColors.bodydark,
          ),
        );
  }
}

class ThemeUtils {
  static SystemUiOverlayStyle themedSystemNavigationBar(BuildContext context,
      {bool noAppBar = false}) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Brightness statusBarBrightness = noAppBar
        ? (isDark ? Brightness.light : Brightness.dark)
        : Brightness.light;
    Brightness statusBarIconBrightness = noAppBar
        ? (isDark ? Brightness.light : Brightness.dark)
        : Brightness.light;

    return SystemUiOverlayStyle(
      // The top status bar settings.
      systemStatusBarContrastEnforced: false,
      statusBarColor: Colors.transparent,
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
      // The bottom navigation bar settings.
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarColor:
          isDark ? AppColors.darkBackground : AppColors.bodyBgColor,
      // Divider setting.
      systemNavigationBarDividerColor:
          isDark ? AppColors.darkBackground : AppColors.bodyBgColor,
      // Bottom system navigation bar icon or swipe bar navigator color.
      systemNavigationBarIconBrightness:
          isDark ? Brightness.light : Brightness.dark,
    );
  }
}
