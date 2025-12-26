import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_model.freezed.dart';

@freezed
abstract class BottomBarModel with _$BottomBarModel {
  factory BottomBarModel({
    required int currentPageIndex,
    @Default(true) bool? isVisible,
  }) = _BottomBarModel;
}
