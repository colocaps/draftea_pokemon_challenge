import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';

class InfoBanner extends StatelessWidget {
  const InfoBanner({
    required this.text,
    super.key,
    this.fontSize,
    this.maxLines = 2,
    this.withIcon = true,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final double? fontSize;
  final int? maxLines;
  final bool withIcon;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (withIcon)
          Assets.icons.infoFilledIcon.svg()
        else
          const SizedBox.shrink(),
        const SizedBox(width: 10),
        Flexible(
          child: CustomLabel(
            textAlign: textAlign,
            maxFontSize: fontSize ?? double.infinity,
            maxLines: maxLines,
            text: text,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontSize: fontSize),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
