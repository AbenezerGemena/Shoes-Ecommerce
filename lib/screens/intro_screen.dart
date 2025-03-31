import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes/core/constants.dart';
import 'package:shoes/screens/onboarding_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 13), (){
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OnboardingScreen()),
            );

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SizedBox.expand(
              child: Image.network(
                introImage,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
                        ),
            ),
            Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Center(
            child: Text(
              "OXY BOOTS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),
            ),
          )
        ],
      ),
      
    );
  }
}