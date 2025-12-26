import 'package:injectable/injectable.dart';
import 'package:draftea_pokemon_challenge/core/helpers/react_handler.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/domain/model/bottom_bar_model.dart';

abstract class BottomBarFeatureRepository extends ReactHandler<BottomBarModel> {
  void updateBottomBar(BottomBarModel bottomBarModel);
  BottomBarModel? get bottomBarModel;
}

@Singleton(as: BottomBarFeatureRepository)
class BottomBarFeatureRepositoryImpl extends BottomBarFeatureRepository {
  BottomBarModel? _bottomBarModel;

  @override
  void updateBottomBar(BottomBarModel bottomBarModel) {
    _bottomBarModel = bottomBarModel;
    notify(_bottomBarModel);
  }

  @override
  BottomBarModel? get bottomBarModel => _bottomBarModel;
}
