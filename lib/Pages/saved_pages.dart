import 'package:e_cook/widgets/Widget_preview_saved.dart';
import 'package:flutter/material.dart';

class SavedPages extends StatefulWidget {
  const SavedPages({super.key});

  @override
  State<SavedPages> createState() => _SavedPagesState();
}

class _SavedPagesState extends State<SavedPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved recipes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              // Appel du widget ici
              WidgetPreviewSaved(
                imgFood: 'assets/search/1.jpg',
                foodName: 'Traditional spare ribs baked',
                rate: '4.0',
                ownerName: 'Collins',
                time: '30',
              ),
              WidgetPreviewSaved(
                imgFood: 'assets/search/2.jpg',
                foodName: 'Traditional spare ribs baked',
                rate: '4.0',
                ownerName: 'John Lenoi',
                time: '20',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
