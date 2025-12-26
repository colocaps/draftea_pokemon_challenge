import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:draftea_pokemon_challenge/ui/themes/theme_helper.dart';
import 'package:flutter/material.dart';

class BorderedButton extends StatefulWidget {
  const BorderedButton({
    required this.onClicked,
    required this.title,
    super.key,
    this.isLoading = false,
    this.height = 50,
    this.width,
    this.suffixIcon,
    this.borderColor,
    this.borderRadius,
  });

  final VoidCallback onClicked;
  final String title;
  final bool isLoading;
  final double? width;
  final double? height;
  final Widget? suffixIcon;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  @override
  BorderedButtonState createState() => BorderedButtonState();
}

class BorderedButtonState extends State<BorderedButton> {
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = ThemeHelper.isDarkThemeOn(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: widget.height,
      width: widget.width,
      child: OutlinedButton(
        onPressed: widget.isLoading ? null : widget.onClicked,
        style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
          side: WidgetStatePropertyAll(
            BorderSide(
              color: widget.borderColor ?? CustomColors.primary,
              width: 2,
            ),
          ),
          shape: widget.borderRadius != null
              ? WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: widget.borderRadius!),
                )
              : null,
        ),
        child: body(isDarkTheme: isDarkTheme),
      ),
    );
  }

  Widget body({required bool isDarkTheme}) {
    if (widget.isLoading == false) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLabel(
              textAlign: TextAlign.center,
              text: widget.title,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: isDarkTheme ? Colors.white : CustomColors.primary,
              ),
            ),
            if (widget.suffixIcon == null)
              const SizedBox.shrink()
            else
              const Spacer(),
            widget.suffixIcon ?? const SizedBox.shrink(),
          ],
        ),
      );
    } else {
      return Stack(
        children: [
          Opacity(
            opacity: widget.isLoading ? 0 : 1,
            child: Center(
              child: CustomLabel(
                text: widget.title,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: isDarkTheme ? Colors.white : CustomColors.primary,
                ),
              ),
            ),
          ),
          if (widget.isLoading)
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: CircularProgressIndicator(
                  color: isDarkTheme ? Colors.white : CustomColors.primary,
                ),
              ),
            )
          else
            const SizedBox(),
        ],
      );
    }
  }
}
