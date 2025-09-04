// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetDetailsRecipes extends StatefulWidget {
  final String imgFood;
  final String foodName;
  final String rate;
  final String time;
  final String ownerName;
  final String locate;

  const WidgetDetailsRecipes({
    Key? superkey,
    required this.imgFood,
    required this.foodName,
    required this.rate,
    required this.time,
    required this.locate,
    required this.ownerName,
  }) : super(key: superkey);

  @override
  State<WidgetDetailsRecipes> createState() => _WidgetDetailsRecipesState();
}

class _WidgetDetailsRecipesState extends State<WidgetDetailsRecipes> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            // minHeight: 200,
            // minWidth: 130,
            // maxWidth: 350,
            // maxHeight: 180,
          ),
          child: Stack(
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
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
        ),
        SizedBox(height: 15),
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                // Nom de la recette
                // 'Steak with tomato sauce and bulgar rice',
                widget.foodName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            // Nombre de vues
            Text(
              '(13k Reviews)',
              style: TextStyle(fontSize: 16, color: Color(0xffa9a9a9)),
            ),
          ],
        ),

        //
        SizedBox(height: 10),

        // Infos du createur
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profil/pp3.jpg'),
                ),
                SizedBox(width: 7),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // Nom du plubieur
                      widget.ownerName,
                      style: TextStyle(
                        // color: Colors.white,
                        // fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 17,
                          color: Color(0xff71b1a1),
                        ),
                        SizedBox(width: 3),
                        Text(
                          // Nom du lieux
                          widget.locate,
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffa9a9a9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            //
          ],
        ),
      ],
    );
  }
}
