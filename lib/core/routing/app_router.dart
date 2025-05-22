import 'package:flutter/material.dart';
import 'package:safty_children/core/routing/Routes.dart';
import 'package:safty_children/features/home/presentation/views/home_screen.dart';
import 'package:safty_children/features/home/presentation/views/web_view_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        case Routes.webView:
        return MaterialPageRoute(
          builder: (_) => WebViewScreen(
            url: settings.arguments as String,
          ),
        );
      
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name ?? "Null"}',
              ),
            ),
          ),
        );
    }
  }
}