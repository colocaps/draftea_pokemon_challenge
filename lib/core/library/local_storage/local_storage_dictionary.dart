class LocalStorageDictionary {
  static const String sessionKey = 'sessionKey';
  static const String fisrtTimeAvatarPage = 'fisrtTimeAvatarPage';
  static const String userData = 'userData';
  static const String dniFront = 'dniFront';
  static const String dniBack = 'dniBack';
  static const String selfie = 'selfie';
  static const String email = 'email';
  static const String userId = 'userId';
  static const String firstStep = 'firstStep';
  static const String voicesOn = 'voicesOn';
  static const String musicOn = 'musicOn';
  static const String cardSoundOn = 'cardSoundOn';
  static const String pointSoundOn = 'pointSoundOn';
  static const String featureFlags = 'featureFlags';
  static const String lastSelectedAmount = 'lastSelectedAmount';
  static const String lastSelectedPoints = 'lastSelectedPoints';
  static List<String> getAllKeys() {
    return List<String>.from([
      sessionKey,
      userData,
      dniBack,
      dniFront,
      selfie,
      email,
      userId,
      voicesOn,
      musicOn,
      cardSoundOn,
      pointSoundOn,
      featureFlags,
      lastSelectedAmount,
      lastSelectedPoints,
    ]);
  }
}
