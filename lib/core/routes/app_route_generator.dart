import 'package:blood_aid_admin/core/routes/app_routes.dart';
import 'package:blood_aid_admin/view/auth/login_view.dart';
import 'package:blood_aid_admin/view/home_view.dart';
import 'package:flutter/material.dart';

class AppRouteGenerator {
  static MaterialPageRoute generaeteRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeView:
        return MaterialPageRoute(
          builder: (context) {
            return HomeView();
          },
        );
      case AppRoutes.loginView:
        return MaterialPageRoute(
          builder: (context) => LoginView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("Oops i am lost!"),
            ),
          ),
        );
    }
  }
}
