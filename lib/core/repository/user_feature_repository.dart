import 'package:injectable/injectable.dart';
import 'package:draftea_pokemon_challenge/core/helpers/react_handler.dart';
import 'package:draftea_pokemon_challenge/core/model/user_model.dart';
import 'package:draftea_pokemon_challenge/core/repository/app_repository.dart';

abstract class UserFeatureRepository extends ReactHandler<UserModel> {
  void updateUser(UserModel userModel);
  UserModel? get userModel;
}

@Singleton(as: UserFeatureRepository)
class UserFeatureRepositoryImpl extends UserFeatureRepository {
  UserFeatureRepositoryImpl({required this.appRepository});

  final AppRepository appRepository;
  UserModel? _userModel;

  @override
  void updateUser(UserModel userModel) {
    _userModel = userModel;
    notify(_userModel);
  }

  @override
  UserModel? get userModel => _userModel;
}
