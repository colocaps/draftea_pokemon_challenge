import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.title,
    super.key,
    this.isUnderlined = false,
    this.color,
    this.fontSize,
  });

  final void Function()? onPressed;

  final String title;
  final bool isUnderlined;
  final Color? color;
  final double? fontSize;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: Theme.of(context).textButtonTheme.style?.copyWith(
        foregroundColor: WidgetStateProperty.all(widget.color ?? Colors.white),
      ),
      child: body(),
    );
  }

  Widget body() {
    return Center(
      child: Text(
        widget.title,
        style: widget.isUnderlined
            ? TextStyle(
                decoration: TextDecoration.underline,
                height: 1.5,
                fontSize: widget.fontSize ?? 16,
              )
            : Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(fontSize: widget.fontSize ?? 16),
      ),
    );
  }
}
