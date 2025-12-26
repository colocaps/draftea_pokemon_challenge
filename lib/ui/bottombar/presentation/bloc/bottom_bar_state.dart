part of 'bottom_bar_bloc.dart';

enum BottomBarStatus { initial }

@freezed
abstract class BottomBarState with _$BottomBarState {
  const factory BottomBarState({
    @Default(BottomBarStatus.initial) BottomBarStatus status,
    BottomBarModel? bottomBarModel,
    DateTime? lastUpdatedAt,
    UserModel? userModel,
  }) = _BottomBarState;
}
