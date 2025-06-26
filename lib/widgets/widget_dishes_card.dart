// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetDishesCard extends StatefulWidget {
  final String foodImg;
  final String foodName;
  final String time;
  final String rate;

  const WidgetDishesCard({
    Key? key,
    Key? superkey,
    required this.foodImg,
    required this.foodName,
    required this.time,
    required this.rate,
  }) : super(key: superkey);

  @override
  State<WidgetDishesCard> createState() => _WidgetDishesCardState();
}

class _WidgetDishesCardState extends State<WidgetDishesCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 250,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 55,
            child: Container(
              width: 150,
              height: 180,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    width: 130,
                    child: Text(
                      // Name
                      // 'Classic Greek Salad',
                      widget.foodName,
                      style: TextStyle(
                        color: Color(0xff484848),
                        fontWeight: FontWeight.w800,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Time',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xffa9a9a9),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 10, width: 8),
                            Text(
                              // Duration
                              // '15 Mins',
                              widget.time,
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff484848),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.turned_in_not,
                          size: 16,
                          color: Color(0xff129575),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Insertion de l'image de la bouffe ici
          Positioned(
            top: 0,
            child: ClipOval(
              child: Image.asset(
                // Image
                // 'assets/foods/food1.jpg',
                widget.foodImg,
                width: 110,
                height: 110,
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 30,
            child: Container(
              width: 50,
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              decoration: BoxDecoration(
                color: Color(0xffffe1b3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_rate, size: 13, color: Color(0xffffad30)),
                  Text(
                    // rating
                    // '4.5',
                    widget.rate,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
