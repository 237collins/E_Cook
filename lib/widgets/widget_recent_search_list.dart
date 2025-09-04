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

class WidgetRecentSearchList extends StatelessWidget {
  final List<PreviewRecipe> recentRecipes;

  const WidgetRecentSearchList({super.key, required this.recentRecipes});

  @override
  Widget build(BuildContext context) {
    if (recentRecipes.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Text("Aucune recherche récente"),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        //   child: Text(
        //     "Recherches récentes",
        //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        //   ),
        // ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: recentRecipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.05,
          ),
          itemBuilder: (context, index) {
            final recette = recentRecipes[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    recette.imgFood,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                      borderRadius: BorderRadius.circular(20),
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
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
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
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
