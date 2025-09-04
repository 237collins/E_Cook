import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String? selectedTime = 'Newest';
  int? selectedRate = 4;
  List<String> selectedCategories = ['All'];

  final List<String> timeOptions = ['All', 'Newest', 'Oldest', 'Popularity'];
  final List<int> rateOptions = [5, 4, 3, 2, 1];
  final List<String> categoryOptions = [
    'All',
    'Cereal',
    'Vegetables',
    'Dinner',
    'Chinese',
    'Local Dish',
    'Fruit',
    'BreakFast',
    'Spanish',
    'Lunch',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Filter Search",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Time
            const Text(
              "Time",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children:
                  timeOptions.map((option) {
                    return ChoiceChip(
                      label: Text(option, style: TextStyle(fontSize: 11)),
                      selected: selectedTime == option,
                      onSelected: (_) => setState(() => selectedTime = option),
                      selectedColor: const Color(0xff129575),
                      backgroundColor: Colors.transparent,
                      labelStyle: TextStyle(
                        color:
                            selectedTime == option
                                ? Colors.white
                                : const Color(0xff129575),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: const Color(0xff129575)),
                      ),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),
            const Text(
              "Rate",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children:
                  rateOptions.map((rate) {
                    final isSelected = selectedRate == rate;
                    return ChoiceChip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("$rate", style: TextStyle(fontSize: 11)),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.star,
                            size: 16,
                            color:
                                isSelected
                                    ? Colors.white
                                    : const Color(0xff129575),
                          ),
                        ],
                      ),
                      selected: isSelected,
                      onSelected: (_) => setState(() => selectedRate = rate),
                      selectedColor: const Color(0xff129575),
                      backgroundColor: Colors.transparent,
                      labelStyle: TextStyle(
                        color:
                            isSelected ? Colors.white : const Color(0xff129575),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: const Color(0xff129575)),
                      ),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),
            const Text(
              "Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 7,
              runSpacing: 7,
              children:
                  categoryOptions.map((cat) {
                    final isSelected = selectedCategories.contains(cat);
                    return FilterChip(
                      label: Text(cat, style: TextStyle(fontSize: 11)),

                      selected: isSelected,
                      onSelected:
                          (selected) => setState(() {
                            selected
                                ? selectedCategories.add(cat)
                                : selectedCategories.remove(cat);
                          }),
                      selectedColor: const Color(0xff129575),
                      checkmarkColor: Colors.white,
                      labelStyle: TextStyle(
                        color:
                            isSelected ? Colors.white : const Color(0xff129575),
                      ),
                      backgroundColor: Colors.transparent,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: const Color(0xff129575)),
                      ),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Appliquer les filtres ici
                  print("Filtre appliqué");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff129575),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
