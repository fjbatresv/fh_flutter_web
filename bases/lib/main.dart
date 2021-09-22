import 'package:bases/locator.dart';
import 'package:bases/router/route_generator.dart';
import 'package:bases/services/navigation_service.dart';
import 'package:bases/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bases App',
      initialRoute: '/stateful',
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (_, child) {
        return MainLayoutPage(
          child: child!,
        );
      },
    );
  }
}
