import 'package:flutter/material.dart';
import 'package:fosonline2/features/auth/screens/authentication_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthenticationPage.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AuthenticationPage());
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: Center(child: Text("Error")
                ),
              )
        );
  }
}
