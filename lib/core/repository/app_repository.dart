import 'package:draftea_pokemon_challenge/core/model/user_model.dart';

abstract class AppRepository {
  Future<void> signOut();
  Future<void> saverUserId(String userId);
  Future<String?> getUserId();
  Future<void> saverUserData(UserModel userModel);
  Future<UserModel?> getUserData();
}
