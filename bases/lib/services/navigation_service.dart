import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return this.navigatorKey.currentState!.pushNamed(routeName);
  }

  goBack() {
    return this.navigatorKey.currentState!.pop();
  }
}
