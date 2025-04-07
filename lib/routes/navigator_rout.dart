import 'package:flutter/material.dart';
import 'package:shoes/screens/intro_screen.dart';
import 'package:shoes/screens/login_screen.dart';
import 'package:shoes/screens/recovery_password_screen.dart';
import 'package:shoes/screens/signup_screen.dart';

class NavigatorRout {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final Map <String,Widget Function(BuildContext)> _routes = {

    "intro" : (context) => const IntroScreen(),
    "signup" : (context) => const SignupScreen(),
    "login" : (context) => const LoginScreen(),
    "recovery" : (context) => const RecoveryPasswordScreen(),
    


  };

   GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
   Map<String, Widget Function(BuildContext)> get routes => _routes;
  void pushNamed(String routeName) {
    _navigatorKey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    _navigatorKey.currentState?.popAndPushNamed(routeName);
  }

  void goBack() {
    _navigatorKey.currentState?.pop();
  }
}
