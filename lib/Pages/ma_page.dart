import 'package:e_cook/widgets/widget_search_list.dart';
import 'package:flutter/material.dart';
// import 'widget_search_list.dart'; // adapte le chemin selon ton projet

class MaPage extends StatelessWidget {
  const MaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final recettes = [
      PreviewRecipe(
        foodName: 'Ndolé',
        imgFood: 'assets/search/1.jpg',
        rate: '4.0',
        ownerName: 'Collins',
      ),
      PreviewRecipe(
        foodName: 'Tô',
        imgFood: 'assets/search/2.jpg',
        rate: '4.5',
        ownerName: 'Mariam',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Recettes')),
      body: WidgetSearchList(recettes: recettes),
    );
  }
}
