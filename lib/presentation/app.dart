import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:chateo/presentation/theme/app_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      localizationsDelegates: const [
        CountryLocalizations.delegate,
      ],
    );
  }
}
