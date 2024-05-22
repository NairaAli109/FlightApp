// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../core/constants/colors.dart';
import '../favorites/favorites_view.dart';
import '../flight/flights_view.dart';
import '../main_page/main_page_view.dart';
import '../profile/profile_view.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({super.key});

  @override
  State<AllScreens> createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {

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
