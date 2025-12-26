import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/container/page_container.dart';
import 'package:draftea_pokemon_challenge/ui/shared/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static const String routeName = 'dashboard';
  static const String path = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async {},
      child: PageContainerSliver(
        applyHorizontalPadding: true,
        horizontalPadding: 20,
        drawerKey: drawerKey,
        // drawer: const CustomDrawer(),
        sliverAppbar: SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 180,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              final percent =
                  ((constraints.maxHeight - kToolbarHeight) /
                          (100 - kToolbarHeight))
                      .clamp(0.0, 1.0);

              final size = 70 + (150 * percent);

              return Stack(
                fit: StackFit.expand,
                children: [
                  Center(
                    child: OverflowBox(
                      maxHeight: double.infinity,
                      maxWidth: double.infinity,
                      child: Assets.images.drafteaLogo.image(
                        height: size,
                        width: size,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          leading: GestureDetector(
            onTap: () => drawerKey.currentState!.openDrawer(),
            child: Assets.icons.appbarMenuIcon.svg(fit: BoxFit.none),
          ),
        ),
        slivers: const [SliverToBoxAdapter(child: SizedBox(height: 10))],
      ),
    );
  }
}
