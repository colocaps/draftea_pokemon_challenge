import 'package:draftea_pokemon_challenge/ui/container/mesh_gradient_painter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageContainerSliver extends StatelessWidget {
  const PageContainerSliver({
    super.key,
    this.resizeToAvoidBottomInset = false,
    this.drawer,
    this.drawerKey,
    this.endDrawer,
    this.backgroundColor,
    this.sliverAppbar,
    this.neverScrollable = false,
    this.slivers = const [],
    this.useGradientBackground = false,
    this.footer,
    this.overlay,
    this.applyHorizontalPadding = false,
    this.horizontalPadding = 30.0,
    this.canPop = true,
    this.onPopInvokedWithResult,
  });

  final SliverAppBar? sliverAppbar;
  final bool resizeToAvoidBottomInset;
  final Widget? drawer;
  final Widget? endDrawer;
  final GlobalKey<ScaffoldState>? drawerKey;
  final Color? backgroundColor;
  final bool neverScrollable;
  final List<Widget> slivers;
  final bool useGradientBackground;
  final Widget? footer;
  final Widget? overlay;
  final bool applyHorizontalPadding;
  final double horizontalPadding;
  final bool canPop;
  final PopInvokedWithResultCallback<dynamic>? onPopInvokedWithResult;

  @override
  Widget build(BuildContext context) {
    final paddedSlivers = applyHorizontalPadding
        ? slivers.map((sliver) {
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              sliver: sliver,
            );
          }).toList()
        : slivers;

    Widget bodyContent = NestedScrollView(
      physics: neverScrollable ? const NeverScrollableScrollPhysics() : null,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        if (sliverAppbar != null) sliverAppbar!,
      ],
      body: CustomScrollView(
        primary: true,
        physics: neverScrollable
            ? const NeverScrollableScrollPhysics()
            : const ClampingScrollPhysics(),
        slivers: paddedSlivers,
      ),
    );

    if (applyHorizontalPadding) {
      bodyContent = Center(
        child: Container(
          width: kIsWeb ? 500 : double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: bodyContent,
        ),
      );
    }

    Widget buildContent(Widget content) {
      if (footer == null) {
        return content;
      }

      final footerWidget = SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: footer,
        ),
      );

      final wrappedFooter = applyHorizontalPadding
          ? Center(
              child: SizedBox(
                width: kIsWeb ? 500 : double.maxFinite,
                child: footerWidget,
              ),
            )
          : footerWidget;

      return Column(
        children: [
          Expanded(child: content),
          wrappedFooter,
        ],
      );
    }

    Widget buildContentWithOverlay(Widget content) {
      if (overlay == null) {
        return buildContent(content);
      }
      return Stack(children: [buildContent(content), overlay!]);
    }

    final scaffold = Scaffold(
      key: drawerKey,
      drawer: drawer,
      endDrawer: endDrawer,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: useGradientBackground
          ? null
          : (backgroundColor ?? Colors.black),
      body: useGradientBackground
          ? Stack(
              children: [
                const MeshGradientWidget(),
                buildContentWithOverlay(bodyContent),
              ],
            )
          : buildContentWithOverlay(bodyContent),
    );

    return PopScope<dynamic>(
      canPop: canPop,
      onPopInvokedWithResult: onPopInvokedWithResult,
      child: scaffold,
    );
  }
}
