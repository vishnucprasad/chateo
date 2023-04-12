// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/login_page/otp_input_page.dart' as _i4;
import '../pages/login_page/phone_number_page.dart' as _i3;
import '../pages/profile_completion_page/profile_completion_page.dart' as _i5;
import '../pages/splash_page/splash_page.dart' as _i1;
import '../pages/start_page/start_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    StartRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.StartPage(),
        transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PhoneNumberRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.PhoneNumberPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OtpInputRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.OtpInputPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileCompletionRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileCompletionPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          StartRoute.name,
          path: '/start-page',
        ),
        _i6.RouteConfig(
          PhoneNumberRoute.name,
          path: '/phone-number-page',
        ),
        _i6.RouteConfig(
          OtpInputRoute.name,
          path: '/otp-input-page',
        ),
        _i6.RouteConfig(
          ProfileCompletionRoute.name,
          path: '/profile-completion-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.StartPage]
class StartRoute extends _i6.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/start-page',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i3.PhoneNumberPage]
class PhoneNumberRoute extends _i6.PageRouteInfo<void> {
  const PhoneNumberRoute()
      : super(
          PhoneNumberRoute.name,
          path: '/phone-number-page',
        );

  static const String name = 'PhoneNumberRoute';
}

/// generated route for
/// [_i4.OtpInputPage]
class OtpInputRoute extends _i6.PageRouteInfo<void> {
  const OtpInputRoute()
      : super(
          OtpInputRoute.name,
          path: '/otp-input-page',
        );

  static const String name = 'OtpInputRoute';
}

/// generated route for
/// [_i5.ProfileCompletionPage]
class ProfileCompletionRoute extends _i6.PageRouteInfo<void> {
  const ProfileCompletionRoute()
      : super(
          ProfileCompletionRoute.name,
          path: '/profile-completion-page',
        );

  static const String name = 'ProfileCompletionRoute';
}
