import 'package:flutter/material.dart';
import 'package:shoes/models/onboarding_model.dart';
import 'package:shoes/widgets/onboarding_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController  _pageController = PageController();
  int _currentPage = 0;

   void _onPageChanged(int index) {
    setState(() {
     _currentPage = index;
    });
  }


    void _nextPage() {
    if (_currentPage < onboardingItems.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to Home/Login
    }
  }

  void _skipOnboarding() {
    setState(() {
      _currentPage = onboardingItems.length - 1;
    });
    _pageController.jumpToPage(onboardingItems.length - 1);
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingItems.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return OnboardingItem(model: onboardingItems[index]);
            },
          ),

                 Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > 0)
                  TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text("Back"),
                  ),
                Row(
                  children: List.generate(
                    onboardingItems.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentPage ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _nextPage,
                  child: Text(_currentPage == onboardingItems.length - 1 ? "Finish" : "Next"),
                ),
              ],
            ),
          ),
        Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _skipOnboarding,
              child: const Text("Skip"),
            ),
          ),
        
          
        ],
      ),
      
    );
  }
}