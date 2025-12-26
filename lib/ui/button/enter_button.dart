import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/button/custom_button.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:draftea_pokemon_challenge/ui/snackbar/top_snackbar.dart';

class EnterButton extends StatefulWidget {
  const EnterButton({
    required this.onClicked,
    required this.title,
    required this.pressedTitle,
    super.key,
    this.isLoading = false,
    this.textColor = Colors.grey,
    this.buttonColor,
    this.isSmall = false,
    this.isEnabled = true,
    this.fontSize,
    this.vertical = 8,
    this.buttonLoader,
    this.fixedSize,
    this.messageOnNotCompleted,
  });

  final VoidCallback onClicked;
  final String title;
  final String pressedTitle;
  final bool isLoading;
  final Color? textColor;
  final Color? buttonColor;
  final bool? isSmall;
  final bool isEnabled;
  final Size? fixedSize;
  final double? fontSize;
  final double vertical;
  final ButtonLoaderEnum? buttonLoader;
  final String? messageOnNotCompleted;

  @override
  EnterButtonState createState() => EnterButtonState();
}

class EnterButtonState extends State<EnterButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    controller
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onClicked();
        }
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        if (controller.status == AnimationStatus.forward) {
          controller.reverse();
          showTopSnackbar(
            context: context,
            title: 'Manten apretado para entrar a la partida',
          );
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Fondo del botón
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: CustomColors.primary,
            ),
            height: widget.fixedSize?.height ?? 30,
            width: widget.isSmall! ? 156 : (widget.fixedSize?.width ?? 75),
          ),
          // Progreso de llenado
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: widget.fixedSize?.height ?? 30,
              width: widget.isSmall! ? 156 : (widget.fixedSize?.width ?? 75),
              child: LinearProgressIndicator(
                value: controller.value,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          // Contenido del botón
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: widget.vertical),
            height: widget.fixedSize?.height ?? 30,
            width: widget.isSmall! ? 156 : (widget.fixedSize?.width ?? 75),
            child: Center(child: body()),
          ),
        ],
      ),
    );
  }

  Widget body() {
    final currentTitle = controller.isAnimating
        ? widget.pressedTitle
        : widget.title;

    if (widget.isLoading == false) {
      return CustomLabel(
        color: widget.textColor,
        text: currentTitle,
        style: Theme.of(context).textTheme.labelLarge,
      );
    } else {
      return Stack(
        children: [
          Opacity(
            opacity: widget.isLoading ? 0 : 1,
            child: Center(
              child: CustomLabel(
                minFontsize: widget.fontSize!,
                maxFontSize: widget.fontSize!,
                color: widget.textColor,
                text: currentTitle,
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
