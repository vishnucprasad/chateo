import 'package:auto_route/auto_route.dart';
import 'package:chateo/presentation/pages/chat_page/chat_page.dart';
import 'package:chateo/presentation/pages/home_page/home_page.dart';
import 'package:chateo/presentation/pages/login_page/otp_input_page.dart';
import 'package:chateo/presentation/pages/login_page/phone_number_page.dart';
import 'package:chateo/presentation/pages/profile_completion_page/profile_completion_page.dart';
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
    CustomRoute(
      page: PhoneNumberPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: OtpInputPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ProfileCompletionPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ChatPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ],
)
class $AppRouter {}
