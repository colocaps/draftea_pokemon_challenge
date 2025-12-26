import 'package:flutter/material.dart';

class CustomScrollBar extends StatelessWidget {
  const CustomScrollBar({
    required this.child,
    required this.scrollController,
    super.key,
    this.scrollbarColor,
    this.isAlwaysVisible = true,
    this.mainAxisMargin = 15,
    this.thickness = 6,
  });

  final Widget child;
  final ScrollController scrollController;
  final Color? scrollbarColor;
  final bool isAlwaysVisible;
  final double mainAxisMargin;
  final double? thickness;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: scrollController,
      thumbColor: scrollbarColor ?? Colors.grey,
      thumbVisibility: isAlwaysVisible,
      thickness: thickness,
      radius: const Radius.circular(5),
      mainAxisMargin: mainAxisMargin,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: child,
      ),
    );
  }
}
