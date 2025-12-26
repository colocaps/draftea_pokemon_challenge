import 'dart:convert';

import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_details/domain/model/pokemon_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PokemonDetailsLocalDataSource {
  Future<void> cachePokemonDetails({
    required String idOrName,
    required PokemonDetailsModel model,
  });

  Future<PokemonDetailsModel?> getCachedPokemonDetails({
    required String idOrName,
  });
}

@Injectable(as: PokemonDetailsLocalDataSource)
class PokemonDetailsLocalDataSourceImpl
    implements PokemonDetailsLocalDataSource {
  PokemonDetailsLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;

  String _key(String idOrName) => 'pokedex.pokemon_details.cache.v1.$idOrName';

  @override
  Future<void> cachePokemonDetails({
    required String idOrName,
    required PokemonDetailsModel model,
  }) async {
    await _prefs.setString(_key(idOrName), jsonEncode(model.toJson()));
  }

  @override
  Future<PokemonDetailsModel?> getCachedPokemonDetails({
    required String idOrName,
  }) async {
    final raw = _prefs.getString(_key(idOrName));
    if (raw == null || raw.isEmpty) return null;
    final decoded = jsonDecode(raw) as Map<String, dynamic>;
    return PokemonDetailsModel.fromJson(decoded);
  }
}
