/// Valida si un correo electrónico tiene un formato válido
bool isValidEmail(String? email) {
  if (email == null || email.isEmpty) {
    return false;
  }

  // Expresión regular para validar el formato de email
  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  return emailRegex.hasMatch(email.trim());
}

/// Valida un correo electrónico y retorna un mensaje de error si es inválido
/// Retorna null si el email es válido
String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'El correo electrónico es requerido';
  }

  if (!isValidEmail(email)) {
    return 'Ingresa un correo electrónico válido';
  }

  return null;
}
