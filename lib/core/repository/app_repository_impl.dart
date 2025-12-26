import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:draftea_pokemon_challenge/core/library/local_storage/local_storage_dictionary.dart';
import 'package:draftea_pokemon_challenge/core/model/user_model.dart';
import 'package:draftea_pokemon_challenge/core/repository/app_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl({required this.prefs});
  final SharedPreferences prefs;

  @override
  Future<void> signOut() async {
    LocalStorageDictionary.getAllKeys().forEach(prefs.remove);
  }

  @override
  Future<String?> getUserId() async {
    return prefs.getString(LocalStorageDictionary.userId);
  }

  @override
  Future<void> saverUserId(String userId) async {
    await prefs.setString(LocalStorageDictionary.userId, userId);
  }

  @override
  Future<UserModel?> getUserData() async {
    final user = prefs.getString(LocalStorageDictionary.userData);
    if (user == null) {
      return null;
    }
    return UserModel.fromJson(jsonDecode(user) as Map<String, dynamic>);
  }

  @override
  Future<void> saverUserData(UserModel userModel) async {
    await prefs.setString(
      LocalStorageDictionary.userData,
      jsonEncode(userModel.toJson()),
    );
  }
}
