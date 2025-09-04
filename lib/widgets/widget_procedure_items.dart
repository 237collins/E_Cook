import 'package:flutter/material.dart';

class WidgetProcedureItems extends StatefulWidget {
  const WidgetProcedureItems({super.key});

  @override
  State<WidgetProcedureItems> createState() => _WidgetProcedureItemsState();
}

class _WidgetProcedureItemsState extends State<WidgetProcedureItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // recupere le nom de l'ingredient pour afficher
            'Step 1 ',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 3),
          Text(
            // recupere le nom de l'ingredient pour afficher
            'Nettoyage des aliments',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8),
          Text(
            'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w300,
              color: Color(0xffa9a9a9),
            ),
            maxLines: 5,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
