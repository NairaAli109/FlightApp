// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../core/constants/colors.dart';
import '../explore/explore_view.dart';
import '../favorites/favorites_view.dart';
import '../flight/widgets/Flights_view.dart';
import '../profile/profile_view.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int currentIndex = 0;
  List<Widget> screens =[
    const ExploreView(),
    const FlightsView(),
    const FavoritesView(),
    const ProfileView(),
  ];
  List<String> appBarTitle =[
    "Explore".toUpperCase(),
    "Flights".toUpperCase(),
    "Favorites".toUpperCase(),
    "Profile".toUpperCase(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: AppBar(
      //   title: Text(
      //     appBarTitle[currentIndex],
      //   ),
      // ),
      body: screens[currentIndex],
      bottomNavigationBar:CurvedNavigationBar(
        color: AppColors.lightBlue,
        backgroundColor: AppColors.secondaryColor,
        animationDuration: const Duration(milliseconds: 500),
        index: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
            print("index: $index");
            print("currentIndex: $currentIndex");
          });
        },
        items: const [
          Icon(Icons.share_location_rounded),
          Icon(Icons.airplanemode_active_outlined),
          Icon(Icons.favorite),
          Icon(Icons.person_outline),
        ],
      )
    );
  }
}
