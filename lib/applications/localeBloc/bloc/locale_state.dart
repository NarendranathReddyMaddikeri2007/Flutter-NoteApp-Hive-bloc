part of 'locale_bloc.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState({required AppLocale appLocale}) = _LocaleState;
   factory LocaleState.initial(){
  return const LocaleState(appLocale: AppLocale.englishLocale);
  }
}
