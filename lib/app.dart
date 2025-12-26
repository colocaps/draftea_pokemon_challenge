import 'package:draftea_pokemon_challenge/config/custom_scroll_behavior.dart';
import 'package:draftea_pokemon_challenge/config/routes.dart';
import 'package:draftea_pokemon_challenge/ui/themes/application_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(800, 600),
      useInheritedMediaQuery: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          locale: const Locale('es', 'ES'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('es', 'ES')],
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.noScaling),
              child: MaterialApp.router(
                scrollBehavior: CustomScrollBehavior(),
                debugShowCheckedModeBanner: false,
                title: 'draftea_pokemon_challenge App',
                locale: const Locale('es', 'ES'),
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [Locale('es', 'ES')],
                theme: ApplicationTheme.light,
                themeMode: ThemeMode.light,
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
                routeInformationProvider: router.routeInformationProvider,
              ),
            );
          },
        );
      },
    );
  }
}
