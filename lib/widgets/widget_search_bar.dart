// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_cook/Pages/home_page.dart';
import 'package:flutter/material.dart';

class WidgetSearchBar extends StatefulWidget {
  final String text;

  const WidgetSearchBar({Key? superkey, required this.text})
    : super(key: superkey);

  @override
  State<WidgetSearchBar> createState() => _WidgetSearchBarState();
}

class _WidgetSearchBarState extends State<WidgetSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            setState(() {});
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(width: 80),
        Text(
          // Name
          // 'Jega',
          widget.text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
