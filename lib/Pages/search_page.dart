import 'package:e_cook/Pages/recent_search_page.dart';
import 'package:e_cook/widgets/widget_filter.dart';
import 'package:e_cook/widgets/widget_search_bar.dart';
import 'package:e_cook/widgets/widget_search_list.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
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
      PreviewRecipe(
        foodName: 'Tôllop',
        imgFood: 'assets/search/3.jpg',
        rate: '4.5',
        ownerName: 'Mariam',
      ),
      PreviewRecipe(
        foodName: 'Sauce tomate',
        imgFood: 'assets/search/4.jpg',
        rate: '4.5',
        ownerName: 'Mariam',
      ),
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
      PreviewRecipe(
        foodName: 'Tôllop',
        imgFood: 'assets/search/3.jpg',
        rate: '4.5',
        ownerName: 'Mariam',
      ),
      PreviewRecipe(
        foodName: 'Sauce tomate',
        imgFood: 'assets/search/4.jpg',
        rate: '4.5',
        ownerName: 'Mariam',
      ),
    ];

    return Scaffold(
      // appBar: AppBar(title: Text('Search recipes')),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Ce row est temporaire
                children: [
                  Text(
                    // Name
                    'Search  Result',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // Nombre de d'element trouver ici
                  Row(
                    children: [
                      Text(
                        'Nbrs',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffa9a9a9),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'results',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffa9a9a9),
                        ),
                      ),
                    ],
                  ),
                  //
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecentSearchPage(),
                        ),
                      );
                    },
                    child: Text('Link test recent '),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Appel Widget ici bass
              WidgetSearchList(recettes: recettes),
            ],
          ),
        ),
      ),
    );
  }
}
