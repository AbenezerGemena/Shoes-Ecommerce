import 'package:flutter/material.dart';
import 'package:shoes/core/utils.dart';

class CustomGoogleButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onPressed;
  const CustomGoogleButton({
    super.key,
    required this.child,
    required this.color,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(
          screenSize.width*0.42, 
          screenSize.height*0.065
          )

        

      ),
      onPressed: onPressed, 
      child: child,
      );
  }
}