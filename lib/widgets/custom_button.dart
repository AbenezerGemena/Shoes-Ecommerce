import 'package:flutter/material.dart';
import 'package:shoes/core/utils.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  const CustomButton({
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
          52
          ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )


      ),
      onPressed: onPressed, 
      child: child
      );

  }
}