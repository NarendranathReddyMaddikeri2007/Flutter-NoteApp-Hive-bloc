part of 'layout_bloc.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState({required AppLayout appLayout}) = _LayoutState;
   factory LayoutState.initial(){
     return const LayoutState(appLayout: AppLayout.gridLayout
    );
  }
}
