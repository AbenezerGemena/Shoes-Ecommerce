import 'package:flutter/material.dart';
import 'package:shoes/screens/login_screen.dart';
import 'package:shoes/screens/recovery_password_screen.dart';
import 'package:shoes/screens/signup_screen.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
       title: 'Shoes Inventory',
      debugShowCheckedModeBanner: false, 
      home: SignupScreen(),
    );
  }
}