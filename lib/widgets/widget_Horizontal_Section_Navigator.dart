import 'package:e_cook/widgets/widget_category_scroll.dart';
import 'package:flutter/material.dart';

class HorizontalSectionNavigator extends StatefulWidget {
  final List<String> sectionTitles;
  final List<Widget> sectionContents;
  final Color? navigationBarColor;
  final TextStyle? navigationTitleStyle;
  final Color? selectedTitleColor;
  final Color? unselectedTitleColor;

  const HorizontalSectionNavigator({
    super.key,
    required this.sectionTitles,
    required this.sectionContents,
    this.navigationBarColor,
    this.navigationTitleStyle,
    this.selectedTitleColor,
    this.unselectedTitleColor,
  }) : assert(
         sectionTitles.length == sectionContents.length,
         'Titles and contents must have the same number of elements.',
       );

  @override
  State<HorizontalSectionNavigator> createState() =>
      _HorizontalSectionNavigatorState();
}

class _HorizontalSectionNavigatorState
    extends State<HorizontalSectionNavigator> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int pageIndex) {
    if (pageIndex != _currentPageIndex) {
      _pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(widget.sectionTitles.length, (index) {
              final isSelected = index == _currentPageIndex;
              return TextButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                onPressed: () => _goToPage(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xff129575) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center, // Centre le contenu du Container
                  child: Text(
                    widget.sectionTitles[index],
                    textAlign:
                        TextAlign
                            .center, // Important pour le texte dans un Expanded
                    style: (widget.navigationTitleStyle ??
                            const TextStyle(fontSize: 11))
                        .copyWith(
                          color:
                              isSelected
                                  ? (widget.selectedTitleColor ?? Colors.white)
                                  : (widget.unselectedTitleColor ??
                                      Color(0xff129575)),
                          fontWeight: FontWeight.w600,
                        ),
                    maxLines: 1,
                    // overflow:
                    //     TextOverflow
                    //         .ellipsis, // Coupe le texte s'il est trop long
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 20),
        // Le PageView pour le contenu des sections
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            children: widget.sectionContents,
          ),
        ),
      ],
    );
  }
}
