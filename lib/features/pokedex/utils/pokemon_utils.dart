int? pokemonIdFromUrl(String url) {
  final match = RegExp(r'/pokemon/(\d+)/?$').firstMatch(url);
  return match == null ? null : int.tryParse(match.group(1)!);
}

String pokemonFormatId(int id) => '#${id.toString().padLeft(3, '0')}';
