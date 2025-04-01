import 'package:flutter/material.dart';
import 'package:shoes/models/onboarding_model.dart';


class OnboardingItem extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            
            fit: StackFit.expand,
            children: [


                     Positioned(
                      top: size.height*0.1,
                      left: 0,
                      right: 0,
                       child: Image.network(
                        model.imageUrl,
                        fit: BoxFit.cover, // Ensures it fills the screen without cropping too much
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(child: CircularProgressIndicator());
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(child: Text("Failed to load image"));
                        },
                                   
                                         ),
                     ),
              
               
          
              Positioned(
              top: size.height * 0.1,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "NIKE",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.05),
                    letterSpacing: 8,
                  ),
                ),
              ),
            ),

           
            // 4. BOTTOM CONTENT (TITLE, SUBTITLE, BUTTON)
            Positioned(
              
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Journey\nWith Nike",
                     
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Smart, Gorgeous & Fashionable Collection",
                      
                    ),
                  ]
             
                ),),)
            ],
          ),
        ),
      ),
    );
  }
}
