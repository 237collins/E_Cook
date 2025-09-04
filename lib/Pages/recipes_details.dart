import 'package:e_cook/widgets/more_menu_overlay.dart';
import 'package:e_cook/widgets/widget_Horizontal_Section_Navigator.dart';
import 'package:e_cook/widgets/widget_details_recipes.dart';
import 'package:e_cook/widgets/widget_ingredient.dart';
import 'package:e_cook/widgets/widget_procedure.dart';
import 'package:flutter/material.dart';

class RecipesDetails extends StatefulWidget {
  const RecipesDetails({super.key});

  @override
  State<RecipesDetails> createState() => _RecipesDetailsState();
}

class _RecipesDetailsState extends State<RecipesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => RecipesDetails()),
                    );
                  },
                  child: Icon(Icons.arrow_circle_left_outlined),
                ),
                // Affichage du pop-up
                MoreMenuOverlay(),
              ],
            ),
            //
            WidgetDetailsRecipes(
              imgFood: 'assets/details/detail1.jpg',
              foodName: 'Spicy chicken burger with French fries',
              rate: '4.0',
              time: '20',
              ownerName: 'Laura Wilson',
              locate: 'Lagos, Nigeria',
            ),
            //
            SizedBox(height: 25),
            Expanded(
              child: HorizontalSectionNavigator(
                sectionTitles: ['Ingredient', 'Procedure'],
                sectionContents: [
                  //
                  WidgetIngredient(),
                  WidgetProcedure(),

                  //
                ],
                // Personnalisation optionnelle
                // navigationBarColor: Colors.deepPurple,
                // selectedTitleColor: Colors.amberAccent,
                // unselectedTitleColor: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
