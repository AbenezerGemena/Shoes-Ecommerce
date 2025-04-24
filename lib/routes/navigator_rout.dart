import 'package:flutter/material.dart';
import 'package:shoes/layout/screen_layout.dart';
import 'package:shoes/screens/details_screen.dart';
import 'package:shoes/screens/favourite_screen.dart';
import 'package:shoes/screens/home_screen.dart';
import 'package:shoes/screens/intro_screen.dart';
import 'package:shoes/screens/login_screen.dart';
import 'package:shoes/screens/profiel_screen.dart';
import 'package:shoes/screens/recovery_password_screen.dart';
import 'package:shoes/screens/signup_screen.dart';

class NavigatorRout {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final Map <String,Widget Function(BuildContext)> _routes = {

    "/intro" : (context) => const IntroScreen(),
    "/signup" : (context) => const SignupScreen(),
    "/login" : (context) => const LoginScreen(),
    "/recovery" : (context) => const RecoveryPasswordScreen(),
    "/home" : (context) => const HomeScreen(),
    "/layout" : (context) => const ScreenLayout(),
    "/profiel" : (context) => const ProfielScreen(),
    "/favourite" : (context) => const FavouriteScreen(),
    "/details" : (context) => const DetailsScreen(),
    


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
