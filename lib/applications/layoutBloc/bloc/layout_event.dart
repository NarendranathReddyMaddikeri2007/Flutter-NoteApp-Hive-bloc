part of 'layout_bloc.dart';

@freezed
class LayoutEvent with _$LayoutEvent {
const factory LayoutEvent.changeLayout({required int count}) = ChangeLayout;
}