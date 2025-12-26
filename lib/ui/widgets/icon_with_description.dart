import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';

class IconWithDescription extends StatelessWidget {
  const IconWithDescription({
    required this.title,
    super.key,
    this.subtitle,
    this.icon,
    this.titleColor,
    this.subtitleColor,
    this.isPoppins = false,
    this.textSize,
    this.onTap,
    this.withDecoration = false,
    this.titleFontWeight = FontWeight.bold,
    this.subtitleFontWeight = FontWeight.normal,
    this.topMargin,
  });

  final String title;
  final String? subtitle;
  final Widget? icon;
  final Color? titleColor;
  final Color? subtitleColor;
  final bool isPoppins;
  final double? textSize;
  final void Function()? onTap;
  final bool withDecoration;
  final FontWeight titleFontWeight;
  final FontWeight subtitleFontWeight;
  final double? topMargin;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(top: topMargin ?? 30),
          padding: withDecoration
              ? const EdgeInsets.symmetric(horizontal: 10, vertical: 25)
              : null,
          decoration: withDecoration
              ? BoxDecoration(
                  color: const Color.fromARGB(97, 172, 156, 216),
                  borderRadius: BorderRadius.circular(12),
                )
              : null,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:
                    icon ??
                    Assets.icons.infoFilledIcon.svg(
                      colorFilter: const ColorFilter.mode(
                        CustomColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: title,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: titleColor ?? Colors.white,
                          fontSize: textSize,
                          fontWeight: titleFontWeight,
                        ),
                      ),
                      TextSpan(
                        text: subtitle,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: subtitleColor ?? Colors.white,
                          fontSize: textSize,
                          fontWeight: subtitleFontWeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
