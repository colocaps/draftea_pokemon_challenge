import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:draftea_pokemon_challenge/core/model/user_model.dart';
import 'package:draftea_pokemon_challenge/core/repository/user_feature_repository.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/domain/model/bottom_bar_model.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/domain/repository/bottom_bar_feature_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_bloc.freezed.dart';
part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc({
    required BottomBarFeatureRepository bottomBarFeatureRepository,
    required UserFeatureRepository userFeatureRepository,
  }) : _bottomBarFeatureRepository = bottomBarFeatureRepository,
       _userFeatureRepository = userFeatureRepository,
       super(
         BottomBarState(bottomBarModel: BottomBarModel(currentPageIndex: 0)),
       ) {
    on<BottomBarUpdatedEvent>(_onUpdated);
    on<BottomBarInitialEvent>(_onInitial);
    _listenToBottomBarChanges();
    _listenToUserChanges();
  }

  StreamSubscription<BottomBarModel?>? _bottomBarSubscription;
  final BottomBarFeatureRepository _bottomBarFeatureRepository;
  StreamSubscription<UserModel?>? _userSubscription;
  final UserFeatureRepository _userFeatureRepository;

  void _listenToBottomBarChanges() {
    _bottomBarSubscription = _bottomBarFeatureRepository.listen((
      bottomBarModel,
    ) {
      if (bottomBarModel != null) {
        log('bottomBarModel: $bottomBarModel');
        add(BottomBarUpdatedEvent(bottomBarModel: bottomBarModel));
      }
    });
  }

  void _listenToUserChanges() {
    _userSubscription = _userFeatureRepository.listen((userModel) {
      if (userModel != null) {
        add(BottomBarUpdatedEvent(userModel: userModel));
      }
    });
  }

  Future<void> _onInitial(
    BottomBarInitialEvent event,
    Emitter<BottomBarState> emit,
  ) async {
    emit(state.copyWith(userModel: _userFeatureRepository.userModel));
  }

  Future<void> _onUpdated(
    BottomBarUpdatedEvent event,
    Emitter<BottomBarState> emit,
  ) async {
    emit(
      state.copyWith(
        bottomBarModel: event.bottomBarModel,
        lastUpdatedAt: DateTime.now(),
        userModel: event.userModel ?? _userFeatureRepository.userModel,
      ),
    );
  }

  @override
  Future<void> close() {
    _bottomBarSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}
