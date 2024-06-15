

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app1/core/enum.dart';

part 'locale_event.dart';
part 'locale_state.dart';
part 'locale_bloc.freezed.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleState.initial()) {
    on<LocaleEvent>((event, emit) {
      switch (event.appLocale) {
        case AppLocale.teluguLocale :emit(const LocaleState(appLocale: AppLocale.teluguLocale));
        case AppLocale.greekLocale: emit(const LocaleState(appLocale: AppLocale.greekLocale));
        case AppLocale.tamilLocale: emit(const LocaleState(appLocale: AppLocale.tamilLocale));
        default:emit(const LocaleState(appLocale: AppLocale.englishLocale));
      }
    });
  }
}
