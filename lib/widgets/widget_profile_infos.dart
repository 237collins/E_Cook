// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetProfileInfos extends StatefulWidget {
  final String name;
  final String greet;
  final String avatar;

  const WidgetProfileInfos({
    Key? superkey,
    required this.name,
    required this.greet,
    required this.avatar,
  }) : super(key: superkey);

  @override
  State<WidgetProfileInfos> createState() => _WidgetProfileInfosState();
}

class _WidgetProfileInfosState extends State<WidgetProfileInfos> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  // Name
                  // 'Jega',
                  widget.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              // Salutation et short message
              // 'What are you cooking today?',
              widget.greet,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: Color(0xffd9d9d9),
              ),
            ),
          ],
        ),
        // Icon
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              // Image or Avatar
              // 'assets/profil/pp.jpg',
              widget.avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // CircleAvatar(
        //   radius: 30,
        //   backgroundImage: AssetImage('assets/profil/pp.jpg'),
        // ),
      ],
    );
  }
}
