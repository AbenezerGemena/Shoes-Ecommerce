 
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
  import 'package:flutter/material.dart';
  import 'package:shoes/core/constants.dart';
  import 'package:shoes/core/themes.dart';

  class ScreenLayout extends StatefulWidget {
    const ScreenLayout({super.key});

    @override
    State<ScreenLayout> createState() => _ScreenLayoutState();
  }

  class _ScreenLayoutState extends State<ScreenLayout> {

    final PageController _pageController = PageController();
    int _selectedPage = 2;


    @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

    final List<IconData> _icons = [
          Icons.home_outlined,
          Icons.favorite_border,
          Icons.shopping_bag_outlined,
          Icons.notifications_none_outlined,
          Icons.person_outline_rounded,
  ];




  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: backgrounColor,
        body:PageView(
          controller: _pageController,
          children: screens,

        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedPage,
          height: 75,
         
          backgroundColor: backgrounColor,
          color: Colors.white,
          onTap: (index) {
          setState(() {
            _selectedPage = index;
            // Optionally use _pageController.jumpToPage(index);
          });
        },
        items: List.generate(_icons.length, (index) {
          return Icon(
            _icons[index],
            color: _selectedPage == index ? Colors.blue : Colors.black54,
          );
        }),
          
          ),
      );
    }
  }