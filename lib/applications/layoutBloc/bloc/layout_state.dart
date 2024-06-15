part of 'layout_bloc.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState({required int count}) = _LayoutState;
   factory LayoutState.initial(){
     return const LayoutState(count: 0
    );
  }
}
