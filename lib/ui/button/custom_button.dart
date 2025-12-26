import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:draftea_pokemon_challenge/ui/loadings/circle_loading.dart';
import 'package:draftea_pokemon_challenge/ui/loadings/three_bounce_loading.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.onClicked,
    required this.title,
    super.key,
    this.isLoading = false,
    this.textColor,
    this.buttonColor,
    this.isSmall = false,
    this.isEnabled = true,
    this.fixedSize,
    this.fontSize,
    this.vertical = 8,
    this.buttonLoader,
    this.isVisible = true,
    this.borderRadius = 16,
  });

  final VoidCallback onClicked;
  final String title;
  final bool isLoading;
  final Color? textColor;
  final Color? buttonColor;
  final bool? isSmall;
  final bool isEnabled;
  final Size? fixedSize;
  final double? fontSize;
  final double vertical;
  final ButtonLoaderEnum? buttonLoader;
  final bool isVisible;
  final double? borderRadius;

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: SizedBox(
        width: widget.isSmall! ? 156 : (widget.fixedSize?.width ?? 400),
        height: widget.isSmall! ? 48 : (widget.fixedSize?.height ?? 60),
        child: ElevatedButton(
          onPressed: widget.isLoading || !widget.isEnabled
              ? null
              : widget.onClicked,
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.isEnabled
                ? (widget.buttonColor ?? CustomColors.primary)
                : Colors.grey,
            foregroundColor: Colors.white,
            disabledBackgroundColor: Colors.grey,
            elevation: 0,
            shadowColor: CustomColors.black.withValues(alpha: 0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
            ),
          ),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    if (widget.isLoading == false) {
      return Center(
        child: CustomLabel(
          color: widget.textColor ?? const Color.fromARGB(255, 9, 1, 53),
          text: widget.title,
          minFontsize: widget.fontSize ?? 10,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      );
    } else {
      return Stack(
        children: [
          Opacity(
            opacity: widget.isLoading ? 0 : 1,
            child: Center(
              child: CustomLabel(
                color: widget.textColor ?? Colors.white,
                text: widget.title,
                minFontsize: widget.fontSize ?? 10,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          if (widget.isLoading)
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(child: setButtonLoader(widget.buttonLoader)),
            )
          else
            const SizedBox(),
        ],
      );
    }
  }
}

enum ButtonLoaderEnum { circle, threeBounce }

Widget setButtonLoader(ButtonLoaderEnum? loader) {
  return switch (loader) {
    ButtonLoaderEnum.circle => const CircleLoading(),
    ButtonLoaderEnum.threeBounce => const ThreeBounceLoading(),
    null => const ThreeBounceLoading(),
  };
}
