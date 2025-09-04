// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PreviewRecipe {
  final String imgFood;
  final String foodName;
  final String rate;
  final String ownerName;

  PreviewRecipe({
    required this.imgFood,
    required this.foodName,
    required this.rate,
    required this.ownerName,
  });
}

class WidgetPreviewRecipe extends StatefulWidget {
  final String imgFood;
  final String foodName;
  final String rate;
  final String ownerName;

  const WidgetPreviewRecipe({
    Key? key,
    Key? superkey,
    required this.imgFood,
    required this.foodName,
    required this.rate,
    required this.ownerName,
  }) : super(key: superkey);

  @override
  State<WidgetPreviewRecipe> createState() => _WidgetPreviewRecipeState();
}

class _WidgetPreviewRecipeState extends State<WidgetPreviewRecipe> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 150,
        minWidth: 130,
        // maxWidth: 150,
        maxHeight: 200,
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
                        width: 140,
                        child: Text(
                          // Nom de la recette
                          // 'Steak with tomato sauce and bulgar rice',
                          widget.foodName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      // Nom de publieur
                      SizedBox(height: 5),
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
                            widget.ownerName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
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

          //
        ],
      ),
    );
  }
}
