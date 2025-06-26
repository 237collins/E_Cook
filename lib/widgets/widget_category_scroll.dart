// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetCategoryScroll extends StatefulWidget {
  final String name;

  const WidgetCategoryScroll({Key? superkey, required this.name})
    : super(key: superkey);

  @override
  State<WidgetCategoryScroll> createState() => _WidgetCategoryScrollState();
}

class _WidgetCategoryScrollState extends State<WidgetCategoryScroll> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          color:
              isSelected ? Color(0xff129575) : Colors.white, // Couleur active
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.name,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color:
                isSelected
                    ? Colors.white
                    : Color((0xff129575)), // Couleur du texte
          ),
        ),
      ),
    );
  }
}
