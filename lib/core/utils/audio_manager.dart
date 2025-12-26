String handleAudio(String message) {
  switch (message) {
    case '¡Tu turno!':
      return 'TU_TURNO.mp3';
    case 'Me rindo':
      return 'ME_RINDO.mp3';
    case 'En mesa':
      return 'EN_MESA.mp3';
    case 'REPARTIR':
      return 'REPARTIR.mp3';
    case 'MATCH':
      return 'MATCH.mp3';
    case 'MATCH_WIN':
      return 'match_win.mp3';
    case 'COIN_WIN':
      return 'coin_win.mp3';
    case 'RANKING_POINTS_WIN':
      return 'ranking_points_win.mp3';
    case 'POP_WIN_2':
      return 'pop_win_2.mp3';
    case 'CARTA_SOUND':
      return 'carta.mp3';
    case 'REPARTIR_SOUND':
      return 'REPARTO.mp3';
    default:
      return 'REPARTIR.mp3';
  }
}

enum AudioSourceEnum {
  extras(route: 'sounds/extras/'),
  fedeNormal(route: 'sounds/fede_normal/'),
  meliNormal(route: 'sounds/meli_normal/');

  const AudioSourceEnum({required this.route});
  final String route;

  String handleAudioRoute(String message) {
    switch (this) {
      case AudioSourceEnum.fedeNormal:
        return route + handleAudio(message);
      case AudioSourceEnum.meliNormal:
        return route + handleAudio(message);
      case AudioSourceEnum.extras:
        return route + handleAudio(message);
    }
  }
}
