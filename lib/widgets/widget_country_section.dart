// lib/section_contents.dart
import 'package:e_cook/widgets/widget_category_scroll.dart';
import 'package:flutter/material.dart';

class AccueilSection extends StatelessWidget {
  const AccueilSection({super.key});

  // Listes ds pages ICI Bas

  @override
  Widget build(BuildContext context) {
    return
    // Widget scroll Categories
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WidgetCategoryScroll(name: 'All'),
          WidgetCategoryScroll(name: 'Indian'),
          WidgetCategoryScroll(name: 'Italian'),
          WidgetCategoryScroll(name: 'Asian'),
          WidgetCategoryScroll(name: 'Chinese'),
          // WidgetCategoryScroll(name: 'American'),

          //
        ],
      ),
    );
  }
}
