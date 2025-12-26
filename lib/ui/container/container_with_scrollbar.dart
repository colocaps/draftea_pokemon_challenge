import 'package:draftea_pokemon_challenge/ui/scrollbar/custom_scrollbar.dart';
import 'package:flutter/material.dart';

class ContainerWithScrollbar extends StatefulWidget {
  const ContainerWithScrollbar({required this.children, super.key});
  final List<Widget> children;
  @override
  State<ContainerWithScrollbar> createState() => _ContainerWithScrollbarState();
}

class _ContainerWithScrollbarState extends State<ContainerWithScrollbar> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollBar(
      scrollController: _scrollController,
      child: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: ListView(
          controller: _scrollController,
          children: widget.children,
        ),
      ),
    );
  }
}
