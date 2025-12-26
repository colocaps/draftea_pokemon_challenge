import 'dart:convert';

import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PokemonListLocalDataSource {
  Future<void> cachePokemonList(PokemonListModel model);
  Future<PokemonListModel?> getCachedPokemonList();
}

@Injectable(as: PokemonListLocalDataSource)
class PokemonListLocalDataSourceImpl implements PokemonListLocalDataSource {
  PokemonListLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _key = 'pokedex.pokemon_list.cache.v1';

  @override
  Future<void> cachePokemonList(PokemonListModel model) async {
    await _prefs.setString(_key, jsonEncode(model.toJson()));
  }

  @override
  Future<PokemonListModel?> getCachedPokemonList() async {
    final raw = _prefs.getString(_key);
    if (raw == null || raw.isEmpty) return null;
    final decoded = jsonDecode(raw) as Map<String, dynamic>;
    return PokemonListModel.fromJson(decoded);
  }
}
