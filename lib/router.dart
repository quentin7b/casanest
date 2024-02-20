import 'package:flutter/material.dart';
import 'package:casanest/views/home/home.screen.dart';
import 'package:casanest/views/splash/splash.screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: SplashRoute.routeName,
    routes: [
      GoRoute(
        path: SplashRoute.routeName,
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashRoute(),
        ),
      ),
      GoRoute(
        path: HomeRoute.routeName,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeRoute(),
        ),
      ),
    ],
  );
});
