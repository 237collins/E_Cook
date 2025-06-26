import 'package:convex_bottom_bar_renew/convex_bottom_bar_renew.dart';
import 'package:flutter/material.dart';

class WidgetBottomNav extends StatefulWidget {
  const WidgetBottomNav({super.key});

  @override
  State<WidgetBottomNav> createState() => _WidgetBottomNavState();
}

class _WidgetBottomNavState extends State<WidgetBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
            SizedBox(width: 48), // espace pour le FAB
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
