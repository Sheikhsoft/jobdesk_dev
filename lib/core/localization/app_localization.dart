import 'package:flutter/cupertino.dart';

class AppLocalization {
  final Locale locale;

  AppLocalization(this.locale);

  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  Map<String, String>? _localizedValues;

  Future loadCultureJson() async {
    // Map<String, dynamic> mappedJson =
    //     await ApiProvider.getCultures(locale.languageCode) ?? {};

    // _localizedValues =
    //     mappedJson.map((key, value) => MapEntry(key, value.toString()));
    // print(_localizedValues);
  }

  String? getTranslatedValues(String key) {
    String setKey = "attn-sec-btn3";
    // var check =
    //     _localizedValues?[locale.languageCode + "_" + "srvs-title-hero"];

    ///
    ///
    if (_localizedValues?[locale.languageCode + "_" + setKey] != null) {}

    return _localizedValues?[locale.languageCode + key];
  }

  static const LocalizationsDelegate<AppLocalization> delegate =
      _AppLocalizationDelegate();
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    // final supportedLocals = UserRepository.getSupportedLocales();

    // debugPrint("Supported Locals ::::::::::::: ${supportedLocals.length}");
    // for (final item in supportedLocals) {
    //   if (item == locale.languageCode) {
    //     return true;
    //   }
    // }

    return true;

    // return ['en', 'bn', 'de', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = AppLocalization(locale);
    await localization.loadCultureJson();
    return localization;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}
