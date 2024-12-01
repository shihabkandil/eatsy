part of 'bottom_navigation_cubit.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({@Default(0) int selectedIndex}) =
      _BottomNavigationState;
}
