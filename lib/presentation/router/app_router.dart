import 'package:auto_route/auto_route.dart';
import 'package:chateo/presentation/pages/splash_page/splash_page.dart';
import 'package:chateo/presentation/pages/start_page/start_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    MaterialRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
      page: StartPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
