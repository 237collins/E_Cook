import 'package:e_cook/widgets/widget_procedure_items.dart';
import 'package:flutter/material.dart';

class WidgetProcedure extends StatefulWidget {
  const WidgetProcedure({super.key});

  @override
  State<WidgetProcedure> createState() => _WidgetProcedureState();
}

class _WidgetProcedureState extends State<WidgetProcedure> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Row(
              children: [
                Icon(
                  Icons.room_service_outlined,
                  size: 17,
                  color: Color(0xffa9a9a9),
                ),
                SizedBox(width: 5),
                Text(
                  // Fonction d'incrementation ici
                  '1',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  'serve',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffa9a9a9),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  // Fonction d'affichage du nombre d'ingredient requis
                  '10',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffa9a9a9),
                  ),
                ),

                SizedBox(width: 3),

                Text(
                  'items',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffa9a9a9),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        // Appel de widget ici
        WidgetProcedureItems(),
      ],
    );
  }
}
