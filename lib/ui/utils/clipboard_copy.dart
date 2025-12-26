import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/snackbar/top_snackbar.dart';

void copyToClipboard({
  required BuildContext context,
  required String dataToCopy,
  String? textToShow,
}) {
  Clipboard.setData(ClipboardData(text: dataToCopy));

  showTopSnackbar(
    icon: Assets.icons.grreenCheckIcon.svg(height: 25),
    context: context,
    title: textToShow ?? 'Copiado correctamente',
  );
}
