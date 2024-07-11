import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/ui/screen/dashboard/dashboard_screen.dart';
import 'package:dev/ui/screen/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
      initialLocation: '/landingScreen',
      routes: [
        GoRoute(
          path: '/landingScreen',
          name: 'landingScreen',
          builder: (context, state) {
            return const LandingScreen();
          },
        ),
        GoRoute(
          path: '/',
          name: 'user_profile',
          builder: (context, state) {
            return const DashboardScreen();
          },
        ),
      ],
      redirect: _guard);

  static String? _guard(BuildContext context, GoRouterState state) {
    final bool loggingIn = state.matchedLocation == '/landingScreen';
    if (context.read<AuthenticationBloc>().state is! LoggedIn) {
      return '/landingScreen';
    }
    // If the user is logged in but still on the login page, send them to
    // the profile page
    if (loggingIn) {
      return '/';
    }
    return null;
  }
}
