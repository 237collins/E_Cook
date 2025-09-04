// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PreviewRecipe {
  final String imgFood;
  final String foodName;
  final String rate;
  final String time;
  final String ownerName;

  PreviewRecipe({
    required this.imgFood,
    required this.foodName,
    required this.rate,
    required this.time,
    required this.ownerName,
  });
}

class WidgetPreviewSaved extends StatefulWidget {
  final String imgFood;
  final String foodName;
  final String rate;
  final String time;
  final String ownerName;

  const WidgetPreviewSaved({
    Key? key,
    Key? superkey,
    required this.imgFood,
    required this.foodName,
    required this.rate,
    required this.time,
    required this.ownerName,
  }) : super(key: superkey);

  @override
  State<WidgetPreviewSaved> createState() => _WidgetPreviewSavedState();
}

class _WidgetPreviewSavedState extends State<WidgetPreviewSaved> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 150,
        minWidth: 130,
        // maxWidth: 150,
        maxHeight: 180,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  // insert image
                  widget.imgFood,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 165,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black87],
                    ),
                  ),
                ),
              ),
              // Text
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          // Nom de la recette
                          // 'Steak with tomato sauce and bulgar rice',
                          widget.foodName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      // Nom de publieur
                      SizedBox(
                        width: screenWidth * .88,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'By',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  // Nom du plubieur
                                  widget.ownerName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            // Time
                            Row(
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  size: 17,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  // Duration
                                  // '15 Mins',
                                  widget.time,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  // Duration
                                  'mins',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8),
                            // Saved button
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.turned_in_not,
                                size: 14,
                                color: Color(0xff129575),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),

              // Icon de notation
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 50,
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xffffe1b3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star_rate,
                            size: 13,
                            color: Color(0xffffad30),
                          ),
                          Text(
                            // rating
                            // '4.5',
                            widget.rate,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
