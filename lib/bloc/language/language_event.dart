part of 'language_bloc.dart';

abstract class LanguageEvent {}

class LoadLanguage extends LanguageEvent {
  final Locale locale;
  final BuildContext context;
  LoadLanguage(this.locale, this.context);
}
