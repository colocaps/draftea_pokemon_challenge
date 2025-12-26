import 'package:draftea_pokemon_challenge/ui/label/custom_label.dart';
import 'package:flutter/material.dart';

class SuffixButton extends StatefulWidget {
  const SuffixButton({
    required this.onClicked,
    required this.title,
    super.key,
    this.isLoading = false,
    this.height = 50,
    this.width,
    this.suffixIcon,
  });

  final VoidCallback onClicked;
  final String title;
  final bool isLoading;
  final double? width;
  final double? height;
  final Widget? suffixIcon;

  @override
  SuffixButtonState createState() => SuffixButtonState();
}

class SuffixButtonState extends State<SuffixButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.isLoading ? null : widget.onClicked,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: body(),
      ),
    );
  }

  Widget body() {
    if (widget.isLoading == false) {
      return Center(
        child: Row(
          children: [
            CustomLabel(
              text: widget.title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
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
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          if (widget.isLoading)
            const Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            )
          else
            const SizedBox(),
        ],
      );
    }
  }
}
