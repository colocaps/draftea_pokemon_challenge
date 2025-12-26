// ignore_for_file: lines_longer_than_80_chars

abstract class ErrorMapper {
  static String returnMessageFromError(String exceptionMessage) {
    switch (exceptionMessage) {
      case 'Bet should be more than minimun':
        return r'El monto minimo para jugar es de $ 100';
      case 'Insufficient funds. The user does not have enough balance for the withdrawal.':
        return 'Saldo insuficiente!';
      case 'Error joining lobby: Not Found':
        return 'Error al unirse a la partida: codigo no encontrado';
      case 'Error joining lobby: User Has Pending Lobby':
        return 'Error al unirse a la partida: ya tienes una partida pendiente';

      default:
        return exceptionMessage;
    }
  }
}
