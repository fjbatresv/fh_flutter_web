import 'package:bases/ui/pages/counter_page.dart';
import 'package:bases/ui/pages/counter_provider_page.dart';
import 'package:bases/ui/pages/page_404.dart';
import 'package:bases/ui/views/counter_provider_view.dart';
import 'package:bases/ui/views/counter_view.dart';
import 'package:bases/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(
          CounterView(),
          '/stateful',
          settings.arguments,
        );
      case '/provider':
        return _fadeRoute(
          CounterProviderView(),
          '/provider',
          settings.arguments,
        );
      default:
        return _fadeRoute(
          View404(),
          '/404',
          settings.arguments,
        );
    }
  }

  static PageRoute _fadeRoute(
    Widget child,
    String routeName,
    Object? arguments,
  ) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName, arguments: arguments),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 20),
      transitionsBuilder: (_, animation, __, ___) => kIsWeb
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child,
              linearTransition: true,
            ),
    );
  }
}
