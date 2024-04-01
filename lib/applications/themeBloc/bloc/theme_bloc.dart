import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeTheme>((event, emit) {
      print('ChangeTheme to ${state.themeMode}');
      if (event.themeMode == ThemeMode.light) {
        emit(const ThemeState(themeMode: ThemeMode.dark));
      } else if (event.themeMode == ThemeMode.dark) {
        emit(const ThemeState(themeMode: ThemeMode.light));
      } else {
        emit(const ThemeState(themeMode: ThemeMode.system));
      }
    });
  }
}
