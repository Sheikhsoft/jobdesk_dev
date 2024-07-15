import 'package:dev/core/constant/app_color.dart';
import 'package:dev/core/localization/app_localization.dart';
import 'package:dev/core/theme/theme_extension.dart';
import 'package:flutter/material.dart';

/// This is a shortcut to use textThemes with BuildContext
///
/// call below code to use it:
///
/// ```dart
///   context.textTheme.headline1;
/// ```
extension ThemeShortcuts on BuildContext {
  /// This is a shortcut to use textThemes with BuildContext
  ///
  /// call below code to use it:
  ///
  /// ```dart
  ///   context.textTheme.headline1;
  /// ```
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// This is a shortcut to use colorScheme with BuildContext
  ///
  /// call below code to use it:
  ///
  /// ```dart
  ///   context.colorScheme.primary;
  /// ```
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// This is a shortcut to use `Theme Extension Colors` with BuildContext
  ///
  /// This colors will change depending on the Theme mode
  ///
  /// call below code to use it:
  ///
  /// ```dart
  ///   context.appColors.primary;
  /// ```
  ColorExtensions get appColors => Theme.of(this).extension<ColorExtensions>()!;
}

///This is a shortcut for getting the screen size of the phone
///
///call below code to use it:
///
///```dart
///   context.height;
///```
extension ScreenSizeShortcuts on BuildContext {
  ///This is a shortcut for getting the screen size of the phone
  ///
  ///call below code to use it:
  ///
  ///```dart
  ///   context.height;
  ///```
  double get height => MediaQuery.of(this).size.height;

  ///This is a shortcut for getting the screen size of the phone
  ///
  ///call below code to use it:
  ///
  ///```dart
  ///   context.width;
  ///```
  double get width => MediaQuery.of(this).size.width;

  ///This is a shortcut for getting the screen viewInsets
  ///
  ///call below code to use it:
  ///
  ///```dart
  ///   context.viewInsets;
  ///```
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
}

///This is a shortcut for giving path of the images or icons
///
///call below code to use it:
///
///```dart
///   "test_image".toPngImagesPath
///```
///
///above code will return `assets/images/test_image.png`
///
extension ImagePathShortcuts on String {
  //For png file path
  String get toPngImagesPath => "assets/images/$this.png";
  String get toPngIconsPath => "assets/icons/$this.png";
  String get toPngAssetsPath => "assets/$this.png";

  //For svg file path
  String get toSvgImagesPath => "assets/images/$this.svg";
  String get toSvgIconsPath => "assets/icons/$this.svg";
  String get toSvgAssetsPath => "assets/$this.svg";

  //For webp file path
  String get toWebpImagesPath => "assets/images/$this.webp";
  String get toWebpIconsPath => "assets/icons/$this.webp";
  String get toWebpAssetsPath => "assets/$this.webp";

  //For jpeg file path
  String get toJpegImagesPath => "assets/images/$this.jpeg";
  String get toJpegIconsPath => "assets/icons/$this.jpeg";
  String get toJpegAssetsPath => "assets/$this.jpeg";

  //For jpg file path
  String get toJpgImagesPath => "assets/images/$this.jpg";
  String get toJpgIconsPath => "assets/icons/$this.jpg";
  String get toJpgAssetsPath => "assets/$this.jpg";
}

///This extension will translate depending on key
extension TranslateExtension on BuildContext {
  ///This extension will translate depending on key
  ///
  ///```dart
  ///   context.translate(key: "_ca-coma-manager", value: "Manager")
  ///```
  ///
  ///Here `value` is used if the translation value is null
  ///
  ///Otherwise, the `result` will be depending on the `key`
  ///
  String translate({required String key, required String value}) {
    return AppLocalization.of(this).getTranslatedValues("_$key") ?? value;
  }
}

///This extension will add a red star at the end of the Text
extension RequiredStartExtension on Text {
  ///This extension will add a red star at the end of the Text
  ///
  ///`.addRequiredStar()`
  ///
  ///example:
  ///
  ///```dart
  ///   Text(
  ///     "Job title",
  ///     style: context.textTheme.bodyText,
  ///   ).addRequiredStar();
  ///```
  RichText addRequiredStar(
      {bool isShowing = true, Color requiredColor = AppColors.dangerColor}) {
    return RichText(
      text: TextSpan(text: data, style: style, children: [
        if (isShowing)
          TextSpan(
            text: "*",
            style: style?.copyWith(color: requiredColor),
          ),
      ]),
    );
  }
}

///This is shourtcut for Navigation,pushReplacement
extension ExtendedNavigator on BuildContext {
  ///This is shourtcut for Navigation push
  ///
  ///example:
  ///
  ///for navigator
  ///
  ///```dart
  ///onTap(){
  /// context.push(DashBoard());
  ///}
  ///```
  Future<dynamic> push(Widget page) async {
    Navigator.push(this, MaterialPageRoute(builder: (_) => page));
  }

  ///This is shourtcut for Navigation pushReplacement
  ///
  ///example:
  ///
  ///```dart
  ///onTap(){
  /// context.pushReplacement(DashBoard());
  ///}
  ///``
  Future<dynamic> pushReplacement(Widget page) async {
    Navigator.pushReplacement(this, MaterialPageRoute(builder: (_) => page));
  }
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<T> distinctBy(Object getCompareValue(T e)) {
    var result = <T>[];
    this.forEach((element) {
      if (!result.any((x) => getCompareValue(x) == getCompareValue(element)))
        result.add(element);
    });

    return result;
  }
}

///This extension is used to clean colors from html text
extension HtmlFontColorCleaner on String {
  ///It will remove `all` the font colors and make them
  ///black or white depending on the theme.
  String get cheanHtmlFontColors => replaceAll(
          RegExp(r'background-color:\s*#[a-fA-F0-9]{6}\s*;'),
          'background-color: transparent;')
      .replaceAll(RegExp(r'color:\s*#[a-fA-F0-9]{6}\s*;'), "");

  ///It will remove `White` and `Black` font colors and make them
  ///black or white depending on the theme.
  String get cheanHtmlFontWBColors =>
      replaceAll(RegExp(r'(?<!\S)color:\s*(?:#ffffff|#000000);\s*'), "")
          .replaceAll(RegExp(r'background-color:\s*#[a-fA-F0-9]{6}\s*;'),
              'background-color: transparent;');
}

///This extension is used to for sizeboxed
extension EmptySpace on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}
