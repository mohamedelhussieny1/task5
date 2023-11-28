import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_color.dart';
import 'package:flutter_application_5/screans/home_screan.dart';
import 'package:flutter_application_5/screans/notification_screan.dart';
import 'package:flutter_application_5/screans/profile_screan.dart';
import 'package:flutter_application_5/screans/search_screan.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScrean(),
    const SearchScrean(),
    const NotificatinScrean(),
    const ProfileScrean(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.sacffoldBG,
        selectedItemColor: AppColors.lomanda,
        unselectedItemColor: AppColors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
      ),
    );
  }
}
