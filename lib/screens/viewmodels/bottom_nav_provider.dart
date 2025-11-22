import 'package:flutter/material.dart';
import 'package:mini_app_dicoding_event/screens/pages/featured_page.dart';
import 'package:mini_app_dicoding_event/screens/pages/main_page.dart';
import 'package:mini_app_dicoding_event/screens/widgets/bottom_navigation.dart';

class BottomNavProvider extends StatefulWidget {
  const BottomNavProvider({super.key});

  @override
  State<BottomNavProvider> createState() => _BottomNavProviderState();
}

class _BottomNavProviderState extends State<BottomNavProvider> {
  int selectedIndex = 0;

  void navItemsTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          MainPage(),
          FeaturedPage()
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: selectedIndex,
        onTap: navItemsTapped,
      ),
    );
  }
}
