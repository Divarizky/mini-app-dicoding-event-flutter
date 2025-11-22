import 'package:flutter/material.dart';

// Widget custom Bottom Navigation Bar
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_available_outlined),
          activeIcon: Icon(Icons.event_available),
          label: 'Event'
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
    );
  }
}
