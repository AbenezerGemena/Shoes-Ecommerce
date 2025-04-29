import 'package:flutter/material.dart';
import 'package:shoes/routes/navigator_rout.dart';
import 'package:shoes/services/service_locator.dart';

class App extends StatelessWidget {
  final NavigatorRout _navigator = locator<NavigatorRout>();
  
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigator.navigatorKey,
      initialRoute: "/profiel",
      onGenerateRoute: (settings) {
        final routeBuilder = _navigator.routes[settings.name];
        if (routeBuilder != null) {
          return MaterialPageRoute(
            builder: (context) => routeBuilder(context),
            settings: settings,
          );
        }
        return null;
      },
    );
  }
}