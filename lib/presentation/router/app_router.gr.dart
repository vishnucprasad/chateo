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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/login_page/otp_input_page.dart' as _i4;
import '../pages/login_page/phone_number_page.dart' as _i3;
import '../pages/splash_page/splash_page.dart' as _i1;
import '../pages/start_page/start_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    StartRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.StartPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PhoneNumberRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.PhoneNumberPage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OtpInputRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.OtpInputPage(),
        transitionsBuilder: _i5.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          StartRoute.name,
          path: '/start-page',
        ),
        _i5.RouteConfig(
          PhoneNumberRoute.name,
          path: '/phone-number-page',
        ),
        _i5.RouteConfig(
          OtpInputRoute.name,
          path: '/otp-input-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.StartPage]
class StartRoute extends _i5.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/start-page',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i3.PhoneNumberPage]
class PhoneNumberRoute extends _i5.PageRouteInfo<void> {
  const PhoneNumberRoute()
      : super(
          PhoneNumberRoute.name,
          path: '/phone-number-page',
        );

  static const String name = 'PhoneNumberRoute';
}

/// generated route for
/// [_i4.OtpInputPage]
class OtpInputRoute extends _i5.PageRouteInfo<void> {
  const OtpInputRoute()
      : super(
          OtpInputRoute.name,
          path: '/otp-input-page',
        );

  static const String name = 'OtpInputRoute';
}
