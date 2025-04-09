import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
      
    );
  }
}