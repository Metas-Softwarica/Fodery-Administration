import 'package:flutter/material.dart';
import 'package:fodery_admin/modules/core/routes/app_routes.dart';
import 'package:fodery_admin/modules/core/routes/route_builder.dart';
import 'package:vrouter/vrouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return VRouter(
      title: 'Fodery Administration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      mode: VRouterMode.history,
      initialUrl: LOGIN_SCREEN_ROUTE,
      routes: buildRoutes(context),
    );
  }
}
