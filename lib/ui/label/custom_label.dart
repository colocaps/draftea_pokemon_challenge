import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomLabel extends StatefulWidget {
  const CustomLabel({
    required this.text,
    this.style,
    super.key,
    this.color,
    this.maxLines,
    this.textAlign = TextAlign.left,
    this.maxFontSize = double.infinity,
    this.minFontsize = 2,
    this.fontWeight = FontWeight.w400,
  });

  final String text;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final double maxFontSize;
  final double minFontsize;
  final FontWeight? fontWeight;

  @override
  LabelState createState() => LabelState();

  String get labelText => text;
}

class LabelState extends State<CustomLabel> {
  late TextStyle labelTheme;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(text: widget.text),
      minFontSize: widget.minFontsize,
      maxFontSize: widget.maxFontSize,
      maxLines: widget.maxLines ?? 1,
      textAlign: widget.textAlign,
      overflow: TextOverflow.ellipsis,
      style:
          widget.style?.copyWith(color: widget.color ?? Colors.black) ??
          Theme.of(context).textTheme.labelLarge?.copyWith(
            color: widget.color ?? Colors.black,
            fontWeight: widget.fontWeight,
          ),
    );
  }
}
