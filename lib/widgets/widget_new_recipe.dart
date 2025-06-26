// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetNewRecipe extends StatefulWidget {
  final String foodName;
  final String foodImg;
  // final String rate;
  final String ownerName;
  final String ownerImg;
  final String time; // Conversion à faire ici  : String en Int

  const WidgetNewRecipe({
    Key? key,
    Key? superkey,
    required this.foodName,
    required this.foodImg,
    // required this.rate,
    required this.ownerName,
    required this.ownerImg,
    required this.time, // Conversion à faire ici : String en Int
  }) : super(key: superkey);

  @override
  State<WidgetNewRecipe> createState() => _WidgetNewRecipeState();
}
// code de convesion de String en Int
// String textNumber = '20';
// int number = int.parse(textNumber);

class _WidgetNewRecipeState extends State<WidgetNewRecipe> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 140,
      child: Column(
        children: [
          SizedBox(height: 30),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                // height: 120,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black12,
                      spreadRadius: 0,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Text(
                        // Nom de la recette
                        // 'Steak with tomato sauce and bulgar rice',
                        widget.foodName,
                        style: TextStyle(
                          color: Color(0xff484848),
                          // fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: 7),
                    // Icone a ajuster
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 12,
                          color: Color(0xffffad30),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: 12,
                          color: Color(0xffffad30),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: 12,
                          color: Color(0xffffad30),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: 12,
                          color: Color(0xffffad30),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          size: 12,
                          color: Color(0xffffad30),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Bloc infos
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 140,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  // Image de la bouffe
                                  // 'assets/profil/pp2.jpg',
                                  widget.foodImg,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'By',
                                style: TextStyle(
                                  color: Color(0xffa9a9a9),
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(width: 2),
                              Text(
                                // Nom du user
                                // 'Name',
                                widget.ownerName,
                                style: TextStyle(
                                  color: Color(0xffa9a9a9),
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 17,
                              color: Color(0xffa9a9a9),
                            ),
                            SizedBox(width: 5),
                            Text(
                              // Duree de suisson
                              // '20',
                              widget.time, // Variable a juster ici
                              style: TextStyle(
                                color: Color(0xffa9a9a9),
                                fontSize: 11,
                              ),
                            ),

                            SizedBox(width: 2),
                            Text(
                              'mins',
                              style: TextStyle(
                                color: Color(0xffa9a9a9),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //
                  ],
                ),
              ),
              // import de l'image
              Positioned(
                top: -30,
                right: 15,
                child: ClipOval(
                  child: Image.asset(
                    // Photo du user
                    // 'assets/foods/food4.jpg',
                    widget.ownerImg,
                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
