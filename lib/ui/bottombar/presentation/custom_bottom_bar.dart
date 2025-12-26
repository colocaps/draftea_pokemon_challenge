import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:draftea_pokemon_challenge/core/repository/user_feature_repository.dart';
import 'package:draftea_pokemon_challenge/di/injection.dart';
import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/domain/model/bottom_bar_model.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/domain/repository/bottom_bar_feature_repository.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/presentation/bloc/bottom_bar_bloc.dart';
import 'package:draftea_pokemon_challenge/ui/bottombar/presentation/destinations.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomBarBloc(
        userFeatureRepository: getIt<UserFeatureRepository>(),
        bottomBarFeatureRepository: getIt<BottomBarFeatureRepository>(),
      )..add(BottomBarInitialEvent()),
      child: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          return Visibility(
            visible: state.bottomBarModel?.isVisible ?? true,
            child: BottomAppBar(
              notchMargin: 0,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      child: NavDestinations(
                        title: 'Inicio',
                        onTap: () {
                          context.read<BottomBarBloc>().add(
                            BottomBarUpdatedEvent(
                              bottomBarModel: BottomBarModel(
                                currentPageIndex: 0,
                              ),
                            ),
                          );
                          //    context.goNamed(DashboardScreen.routeName);
                          // TODO: Add dashboard screen
                        },
                        isSelected: state.bottomBarModel?.currentPageIndex == 0,
                        // iconImage: Assets.icons.homeIcon.svg(
                        //   colorFilter: ColorFilter.mode(
                        //     state.bottomBarModel?.currentPageIndex == 0
                        //         ? CustomColors.primary
                        //         : Colors.black,
                        //     BlendMode.srcIn,
                        //   ),
                        // ),
                        iconImage: const SizedBox.shrink(),
                      ),
                    ),
                    Expanded(
                      child: NavDestinations(
                        title: 'Salas',
                        onTap: () {
                          context.read<BottomBarBloc>().add(
                            BottomBarUpdatedEvent(
                              bottomBarModel: BottomBarModel(
                                currentPageIndex: 1,
                              ),
                            ),
                          );
                          //    context.goNamed(PublicLobbyScreen.routeName);
                          // TODO: Add public lobby screen
                        },
                        isSelected: state.bottomBarModel?.currentPageIndex == 1,
                        // iconImage: Assets.icons.roomsIcon.svg(
                        //   colorFilter: ColorFilter.mode(
                        //     state.bottomBarModel?.currentPageIndex == 1
                        //         ? CustomColors.primary
                        //         : Colors.black,
                        //     BlendMode.srcIn,
                        //   ),
                        // ),
                        iconImage: const SizedBox.shrink(),
                      ),
                    ),
                    Expanded(
                      child: NavDestinations(
                        title: 'Ranking',
                        onTap: () {
                          context.read<BottomBarBloc>().add(
                            BottomBarUpdatedEvent(
                              bottomBarModel: BottomBarModel(
                                currentPageIndex: 2,
                              ),
                            ),
                          );
                          //    context.goNamed(RankingScreen.routeName);
                          // TODO: Add ranking screen
                        },
                        isSelected: state.bottomBarModel?.currentPageIndex == 2,
                        // iconImage: Assets.icons.rankingIcon.svg(
                        //   colorFilter: ColorFilter.mode(
                        //     state.bottomBarModel?.currentPageIndex == 2
                        //         ? CustomColors.primary
                        //         : Colors.black,
                        //     BlendMode.srcIn,
                        //   ),
                        // ),
                        iconImage: const SizedBox.shrink(),
                      ),
                    ),
                    Expanded(
                      child: NavDestinations(
                        title: 'Perfil',
                        onTap: () {
                          context.read<BottomBarBloc>().add(
                            BottomBarUpdatedEvent(
                              bottomBarModel: BottomBarModel(
                                currentPageIndex: 3,
                              ),
                            ),
                          );
                          //    context.goNamed(AccountConfigScreen.routeName);
                          // TODO: Add account config screen
                        },
                        isSelected: state.bottomBarModel?.currentPageIndex == 3,
                        // iconImage: Assets.icons.profileIcon.svg(
                        //   colorFilter: ColorFilter.mode(
                        //     state.bottomBarModel?.currentPageIndex == 3
                        //         ? CustomColors.primary
                        //         : Colors.black,
                        //     BlendMode.srcIn,
                        //   ),
                        // ),
                        iconImage: const SizedBox.shrink(),
                      ),
                    ),
                    // Expanded(
                    //   child: BottomBarDepositIcon(
                    //     isSelected: state.bottomBarModel?.currentPageIndex == 4,
                    //     onTap: () {
                    //       context.read<BottomBarBloc>().add(
                    //         BottomBarUpdatedEvent(
                    //           bottomBarModel: BottomBarModel(
                    //             currentPageIndex: 4,
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
