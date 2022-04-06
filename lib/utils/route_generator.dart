import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fminimal/scenes/auth/ui/auth_page.dart';
import 'package:fminimal/scenes/setup/ui/setup_page.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final Widget page;
    switch (routeSettings.name) {
      case AppRoutes.setup:
        page = const SetupPage();
        break;
      case AppRoutes.auth:
        page = const AuthPage();
        break;
      default:
        page = SetupPage();
    }

    return MaterialPageRoute(builder: (_) => page);
  }
}

class AppRoutes {
  static const setup = '/setup';
  static const auth = '/auth';
}
