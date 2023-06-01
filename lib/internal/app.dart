import 'package:auto_route/auto_route.dart';
import 'package:flame/assets/theme/color_schemes.g.dart';
import 'package:flame/domain/profile_service.dart';
import 'package:flame/l10n/generated/app_localizations.dart';
import 'package:flame/page/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final profile = context.read<ProfileService>();
    return MaterialApp.router(
      title: 'Flame',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      // themeMode: ThemeMode.light,
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router.config(
        deepLinkBuilder: (d) async {
          final isLogIn = await profile.isLoggedIn();


          PageRouteInfo? page;



          if (isLogIn) {
            page = const HomeRoute();

            final registered = await profile.registered();
            if (!registered) {
              page = RegistrationRoute();
            }
          }

          page ??= AuthRoute();

          return DeepLink(
            [
              page,
            ],
          );
        },
      ),
    );
  }
}
