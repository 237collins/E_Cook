import 'package:e_cook/Pages/country_foods/asian.dart';
import 'package:e_cook/Pages/country_foods/cameroun_foods.dart';
import 'package:e_cook/Pages/country_foods/indian.dart';
import 'package:e_cook/widgets/widget_dishes_card.dart';
import 'package:e_cook/widgets/widget_new_recipe.dart';
import 'package:flutter/material.dart';

class AllFoods extends StatefulWidget {
  const AllFoods({super.key});

  @override
  State<AllFoods> createState() => _AllFoodsState();
}

class _AllFoodsState extends State<AllFoods> {
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                WidgetDishesCard(
                  foodImg: 'assets/foods/food1.jpg',
                  foodName: 'Classic Greek Salad',
                  time: '15 Mins',
                  rate: '4.5',
                ),
                WidgetDishesCard(
                  foodImg: 'assets/foods/food2.jpg',
                  foodName: 'Crunchy Nut Coleslaw',
                  time: '15 Mins',
                  rate: '3.5',
                ),
                WidgetDishesCard(
                  foodImg: 'assets/foods/food3.jpg',
                  foodName: 'Shrimp Chicken Anouille...',
                  time: '10 Mins',
                  rate: '3.0',
                ),
              ],
            ),
          ),
          // Test Display
          SizedBox(height: 10),
          Text(
            'New Recipes',
            style: TextStyle(
              // color: Color(0xff484848),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          //

          // Appel widget de nouvelle de recettes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                WidgetNewRecipe(
                  foodName: 'Steak with tomato sauce and bulgar rice',
                  foodImg: 'assets/profil/pp2.jpg',
                  // rate: '',
                  ownerImg: 'assets/foods/food4.jpg',
                  ownerName: 'James Millner',
                  time: '20',
                ),
                WidgetNewRecipe(
                  foodName: 'Pilaf sweet with lamb-and-raisins',
                  foodImg: 'assets/profil/pp3.jpg',
                  // rate: '',
                  ownerImg: 'assets/foods/food5.jpg',
                  ownerName: 'Laura wilson',
                  time: '20',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
