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

class WidgetSearchList extends StatefulWidget {
  final List<PreviewRecipe> recettes;

  const WidgetSearchList({super.key, required this.recettes});

  @override
  State<WidgetSearchList> createState() => _WidgetSearchListState();
}

class _WidgetSearchListState extends State<WidgetSearchList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // <-- Important pour Column
      physics: const NeverScrollableScrollPhysics(), // <-- Important aussi
      itemCount: widget.recettes.length,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.05,
      ),
      itemBuilder: (context, index) {
        final recette = widget.recettes[index];

        return GestureDetector(
          onTap: () {},
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 150,
              minWidth: 130,
              maxHeight: 200,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        recette.imgFood,
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
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recette.foodName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'By',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  recette.ownerName,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 50,
                            padding: const EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffe1b3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.star_rate,
                                  size: 13,
                                  color: Color(0xffffad30),
                                ),
                                Text(
                                  recette.rate,
                                  style: const TextStyle(
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
          ),
        );
      },
    );
  }
}
