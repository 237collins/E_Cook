import 'package:e_cook/Pages/filter_page.dart';
import 'package:flutter/material.dart';

class WidgetFilter extends StatefulWidget {
  const WidgetFilter({super.key});

  @override
  State<WidgetFilter> createState() => _WidgetFilterState();
}

class _WidgetFilterState extends State<WidgetFilter> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FilterPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(9.5),
        decoration: BoxDecoration(
          color: Color(0xff129575),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(Icons.tune, size: 30, color: Colors.white),
      ),
    );
  }
}
