import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? _generateRoute(
      Widget routeToGo, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => routeToGo,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => routeToGo,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => routeToGo,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _generateRoute(const HomePage(), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('404'),
            ),
            body: const Center(
              child: Text('There is no such page'),
            ),
          ),
        );
    }
  }
}
