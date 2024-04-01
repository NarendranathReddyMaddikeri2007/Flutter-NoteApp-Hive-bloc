part of 'layout_bloc.dart';

@freezed
class LayoutEvent with _$LayoutEvent {
const factory LayoutEvent.changeTheme({required AppLayout appLayout}) = ChangeLayout;
}