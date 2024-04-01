import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app1/core/enum.dart';

part 'layout_event.dart';
part 'layout_state.dart';
part 'layout_bloc.freezed.dart';

class LayoutBloc extends Bloc<LayoutEvent, LayoutState> {
  LayoutBloc() : super(LayoutState.initial()) {
    on<LayoutEvent>((event, emit) {
      print('LayoutTheme to ${state.appLayout}');
      if (event.appLayout == AppLayout.gridLayout) {
        emit(const LayoutState(appLayout: AppLayout.listLayout));
      } else {
        emit(const LayoutState(appLayout: AppLayout.gridLayout));
      }
    });
  }
}
