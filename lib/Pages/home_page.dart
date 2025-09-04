// import 'package:convex_bottom_bar_renew/convex_bottom_bar_renew.dart';
import 'package:e_cook/Pages/country_foods/all_foods.dart';
import 'package:e_cook/Pages/country_foods/asian.dart';
import 'package:e_cook/Pages/country_foods/cameroun_foods.dart';
import 'package:e_cook/Pages/country_foods/chinese.dart';
import 'package:e_cook/Pages/country_foods/indian.dart';
import 'package:e_cook/Pages/recent_search_page.dart';
import 'package:e_cook/widgets/widget_Horizontal_Section_Navigator.dart';
// import 'package:e_cook/widgets/widget_bottom_nav.dart';
import 'package:e_cook/widgets/widget_filter.dart';
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
      // backgroundColor: Colors.white,
      // bottomNavigationBar: ConvexAppBar(
      //   backgroundColor: Colors.white, // Couleur du fond
      //   activeColor: Colors.teal, // Couleur de l'icône active
      //   color: Colors.grey, // Couleur des icônes inactives
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.map, title: 'Discovery'),
      //     TabItem(icon: Icons.add, title: 'Add'),
      //     TabItem(icon: Icons.message, title: 'Message'),
      //     TabItem(icon: Icons.people, title: 'Profile'),
      //   ],
      //   onTap: (int i) => print('click index=$i'),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
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
                // Link to FilterPage
                WidgetFilter(),
                //
              ],
            ),
            //
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
                  // page 4
                  Chinese(),
                  // page 5
                  // Chinese(),
                ],
                // Personnalisation optionnelle
                // navigationBarColor: Colors.deepPurple,
                // selectedTitleColor: Colors.amberAccent,
                // unselectedTitleColor: Colors.white70,
              ),
            ),

            // SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecentSearchPage()),
                );
              },
              child: Text('Link to  test'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
