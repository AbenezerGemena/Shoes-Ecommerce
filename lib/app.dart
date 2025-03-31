import 'package:flutter/material.dart';
import 'package:shoes/screens/intro_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Shoes Inventory',
      debugShowCheckedModeBanner: false, 
      home: IntroScreen()
    );
  }
}