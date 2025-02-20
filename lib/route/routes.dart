import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/route/route_name.dart';
import 'package:we_move/src/feature/home/presentation/screen/home_screen.dart';
import 'package:we_move/src/feature/intro/data/service/screen/approval_screen.dart';
import 'package:we_move/src/feature/intro/data/service/screen/intro_screen.dart';
import 'package:we_move/src/feature/intro/data/service/screen/otp_screen.dart';
import 'package:we_move/src/feature/intro/data/service/screen/login_screen.dart';
import 'package:we_move/src/feature/intro/data/service/screen/selfi_screen.dart';
import 'package:we_move/src/feature/splash/splash_screen.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.slpash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RouteName.intro,
      builder: (BuildContext context, GoRouterState state) {
        return const IntroScreen();
      },
    ),
    GoRoute(
      path: RouteName.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: RouteName.otp,
      builder: (BuildContext context, GoRouterState state) {
        return const OtpScreen();
      },
    ),
    GoRoute(
      path: RouteName.selfi,
      builder: (BuildContext context, GoRouterState state) {
        return const SelfiScreen();
      },
    ),
    GoRoute(
      path: RouteName.approval,
      builder: (BuildContext context, GoRouterState state) {
        return const ApprovalScreen();
      },
    ),
    GoRoute(
      path: RouteName.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: RouteName.error,
      builder: (BuildContext context, GoRouterState state) {
        return const Center(
          child: BrandText.primary(data: Strings.somethingWentWrong),
        );
      },
    ),
  ],
);
