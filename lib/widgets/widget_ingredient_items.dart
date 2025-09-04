import 'package:flutter/material.dart';

class WidgetIngredientItems extends StatefulWidget {
  const WidgetIngredientItems({super.key});

  @override
  State<WidgetIngredientItems> createState() => _WidgetIngredientItemsState();
}

class _WidgetIngredientItemsState extends State<WidgetIngredientItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  // image de l'ingredient
                  'assets/ingredient_recipe/tomato.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Row(
                children: [
                  Text(
                    // recupere le nom de l'ingredient pour afficher
                    'Tomato',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        '500',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffa9a9a9),
                        ),
                      ),
                      Text(
                        'g',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffa9a9a9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
