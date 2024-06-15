part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.changeLocale({required AppLocale appLocale}) = ChangeLocale;
}