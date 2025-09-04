import 'package:convex_bottom_bar_renew/convex_bottom_bar_renew.dart';
import 'package:e_cook/Pages/saved_pages.dart';
import 'package:e_cook/widgets/widget_filter.dart';
import 'package:e_cook/widgets/widget_recent_search_list.dart';
import 'package:e_cook/widgets/widget_search_bar.dart';

import 'package:flutter/material.dart';

class RecentSearchPage extends StatefulWidget {
  const RecentSearchPage({super.key});

  @override
  State<RecentSearchPage> createState() => _RecentSearchPageState();
}

class _RecentSearchPageState extends State<RecentSearchPage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // appBar: AppBar(title: Text('Search recipes')),
      backgroundColor: Colors.white,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white, // Couleur du fond
        activeColor: Colors.teal, // Couleur de l'icône active
        color: Colors.grey,
        style: TabStyle.flip, // Couleur des icônes inactives
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // widget search  bar
              WidgetSearchBar(text: 'Search recipes'),
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
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    // Name
                    'Recent Search',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  //
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SavedPages()),
                      );
                    },
                    child: Text('Link test to Saved '),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Appel Widget ici bas
              WidgetRecentSearchList(
                recentRecipes: [
                  // Creer un algo ou une fonction qui va afficher automatiquement les les contents et le nomre total
                  PreviewRecipe(
                    foodName: 'Ndolé',
                    imgFood: 'assets/search/1.jpg',
                    rate: '4.0',
                    ownerName: 'Collins',
                  ),
                  PreviewRecipe(
                    foodName: 'Ndolé',
                    imgFood: 'assets/search/2.jpg',
                    rate: '4.0',
                    ownerName: 'Collins',
                  ),
                  PreviewRecipe(
                    foodName: 'Ndolé',
                    imgFood: 'assets/search/3.jpg',
                    rate: '4.0',
                    ownerName: 'Collins',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
