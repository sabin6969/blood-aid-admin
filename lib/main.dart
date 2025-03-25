import 'package:blood_aid_admin/core/routes/app_route_generator.dart';
import 'package:blood_aid_admin/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

late Size size;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blood Aid Admin",
      initialRoute: AppRoutes.loginView,
      onGenerateRoute: AppRouteGenerator.generaeteRoute,
    );
  }
}
