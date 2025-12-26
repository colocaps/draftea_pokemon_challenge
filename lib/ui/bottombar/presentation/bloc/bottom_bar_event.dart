part of 'bottom_bar_bloc.dart';

abstract class BottomBarEvent {}

class BottomBarInitialEvent extends BottomBarEvent {}

class BottomBarUpdatedEvent extends BottomBarEvent {
  BottomBarUpdatedEvent({this.bottomBarModel, this.userModel});
  final BottomBarModel? bottomBarModel;
  final UserModel? userModel;
}
