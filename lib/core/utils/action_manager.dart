String? actionManager(String? action) {
  switch (action) {
    case 'CARTA':
      return 'Carta';
    case 'REPARTIR':
      return 'Repartir';
    case 'EL_ENVIDO_ESTA_PRIMERO':
      return 'El envido esta primero';
    case 'TU_TURNO':
      return 'Tu turno';
    case 'PERDISTE_POR_ABANDONO':
      return 'Perdiste';
    case 'GANASTE_POR_ABANDONO':
      return 'Ganaste';
    case 'PERDISTE_EL_PARTIDO':
      return 'Perdiste';
    case 'GANASTE_EL_PARTIDO':
      return 'Ganaste';
    case 'PERDISTE_LA_MANO':
      return 'Perdiste la mano';
    case 'GANASTE_LA_MANO':
      return 'Ganaste la mano';

    case '':
      return '';
    default:
      return null;
  }
}
