



import 'package:flutter/widgets.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String imageUrl;
  OnboardingModel({
    required this.description,
    required this.imageUrl,
    required this.title
  });


}

List<OnboardingModel> onboardingItems = [
  OnboardingModel(
    title: "Discover the Best Shoes",
    description: "Find top-quality shoes at great prices.",
    imageUrl: "https://i.pinimg.com/736x/c9/9b/12/c99b12dc39909a23cd89dcec9f62c3e5.jpg"
   ,
  ),
  OnboardingModel(
    title: "Easy & Secure Shopping",
    description: "Experience a fast and safe checkout process.",
     imageUrl: "https://i.pinimg.com/736x/c9/9b/12/c99b12dc39909a23cd89dcec9f62c3e5.jpg"
  ),
  OnboardingModel(
    title: "Let's Get Started!",
    description: "Sign up now and start shopping today.",
     imageUrl: "https://i.pinimg.com/736x/c9/9b/12/c99b12dc39909a23cd89dcec9f62c3e5.jpg"
  ),
];