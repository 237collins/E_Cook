import 'package:e_cook/Pages/country_foods/all_foods.dart';
import 'package:e_cook/Pages/country_foods/asian.dart';
import 'package:e_cook/Pages/country_foods/cameroun_foods.dart';
import 'package:e_cook/Pages/country_foods/chinese.dart';
import 'package:e_cook/Pages/country_foods/indian.dart';
import 'package:e_cook/widgets/widget_Horizontal_Section_Navigator.dart';
import 'package:e_cook/widgets/widget_profile_infos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
        child: Column(
          children: [
            // widget profile infos bar
            WidgetProfileInfos(
              name: 'Jega',
              greet: 'What are you cooking today?',
              avatar: 'assets/profil/pp.jpg',
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xffd9d9d9),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffd9d9d9)),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                      hintText: 'Search recipe',
                      hintStyle: TextStyle(
                        color: Color(0xffd9d9d9),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(9.5),
                  decoration: BoxDecoration(
                    color: Color(0xff129575),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.tune, size: 30, color: Colors.white),
                ),
              ],
            ),
            //
            SizedBox(height: 30),

            // Widget scroll Categories
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       WidgetCategoryScroll(name: 'All'),
            //       WidgetCategoryScroll(name: 'Indian'),
            //       WidgetCategoryScroll(name: 'Italian'),
            //       WidgetCategoryScroll(name: 'Asian'),
            //       WidgetCategoryScroll(name: 'Chinese'),
            //       WidgetCategoryScroll(name: 'All'),

            //       //
            //     ],
            //   ),
            // ),
            // AccueilSection(),
            Expanded(
              child: HorizontalSectionNavigator(
                sectionTitles: [
                  'All',
                  'Cameroun',
                  'Indian',
                  'Asian',
                  'Chinese',
                  // 'American',
                ],
                sectionContents: [
                  // page 1
                  AllFoods(),
                  // Autres pays
                  CamerounFoods(),
                  // page 2
                  Indian(),
                  // page 3
                  Asian(),
                  // pahe 4
                  Chinese(),
                ],
                // Personnalisation optionnelle
                // navigationBarColor: Colors.deepPurple,
                // selectedTitleColor: Colors.amberAccent,
                // unselectedTitleColor: Colors.white70,
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
