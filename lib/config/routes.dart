import 'dart:developer';

import 'package:draftea_pokemon_challenge/app/root_page.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/presentation/view/pokemon_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
const allowedRoutes = <String>[];
final router = GoRouter(
  onException: (context, state, router) {
    log('error on go router');
  },
  debugLogDiagnostics: true,
  initialLocation: PokemonListScreen.path,
  navigatorKey: _rootNavigatorKey,
  routes: [...mainRoutes],
);

Animatable<Offset> buildTransiton() {
  const begin = Offset(1, 0);
  const end = Offset.zero;
  const curve = Curves.ease;

  final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  return tween;
}

final mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return RootPage(child: navigationShell);
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: PokemonListScreen.path,
            name: PokemonListScreen.routeName,
            builder: (context, state) {
              return const PokemonListScreen();
            },
          ),
        ],
      ),
    ],
  ),
];
