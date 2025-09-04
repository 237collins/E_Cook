import 'package:flutter/material.dart';

class MoreMenuOverlay extends StatefulWidget {
  const MoreMenuOverlay({super.key});

  @override
  State<MoreMenuOverlay> createState() => _MoreMenuOverlayState();
}

class _MoreMenuOverlayState extends State<MoreMenuOverlay> {
  //

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Contenu principal
        Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: PopupMenuButton<int>(
              color: Colors.white,
              icon: Icon(Icons.more_horiz_outlined, color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onSelected: (value) {
                switch (value) {
                  case 0:
                    print("Share clicked");
                    break;
                  case 1:
                    print("Rate Recipe clicked");
                    break;
                  case 2:
                    print("Review clicked");
                    break;
                  case 3:
                    print("Unsave clicked");
                    break;
                }
              },
              itemBuilder:
                  (context) => [
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(Icons.share, color: Colors.black),
                          SizedBox(width: 15),
                          Text("Share"),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.star_border, color: Colors.black),
                          SizedBox(width: 15),
                          Text("Rate Recipe"),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.chat_bubble_outline, color: Colors.black),
                          SizedBox(width: 15),
                          Text("Review"),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_remove_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15),
                          Text("Unsave"),
                        ],
                      ),
                    ),
                  ],
            ),
          ),
        ),
      ],
    );
  }
}
