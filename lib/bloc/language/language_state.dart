part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final Locale locale;

  static String lang = 'en';

  const LanguageState(this.locale);

  factory LanguageState.initial() => LanguageState(Locale(lang, ''));

  LanguageState copyWith(Locale locale) => LanguageState(this.locale);

  @override
  List<Object?> get props => [locale];
}
