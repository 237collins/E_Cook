import 'package:convex_bottom_bar_renew/convex_bottom_bar_renew.dart';
import 'package:e_cook/Pages/home_page.dart';
import 'package:e_cook/Pages/saved_pages.dart';
import 'package:flutter/material.dart';

// import 'add_page.dart';
// import 'notifications_page.dart';
// import 'profile_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SavedPages(),
    // AddPage(),
    // NotificationsPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: Colors.teal,
        color: Colors.grey,
        style: TabStyle.flip,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.bookmark, title: 'Saved'),
          // TabItem(icon: Icons.add, title: 'Add'),
          // TabItem(icon: Icons.notifications, title: 'Notifications'),
          // TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
