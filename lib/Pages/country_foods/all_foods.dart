import 'package:e_cook/Pages/country_foods/asian.dart';
import 'package:e_cook/Pages/country_foods/cameroun_foods.dart';
import 'package:e_cook/Pages/country_foods/indian.dart';
import 'package:e_cook/widgets/widget_dishes_card.dart';
import 'package:flutter/material.dart';

class AllFoods extends StatefulWidget {
  const AllFoods({super.key});

  @override
  State<AllFoods> createState() => _AllFoodsState();
}

class _AllFoodsState extends State<AllFoods> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                WidgetDishesCard(
                  foodImg: 'assets/foods/food1.jpg',
                  foodName: 'Classic Greek Salad',
                  time: '15 Mins',
                  rate: '4.5',
                ),
                // SizedBox(width: 10),
                WidgetDishesCard(
                  foodImg: 'assets/foods/food2.jpg',
                  foodName: 'Classic Greek Salad',
                  time: '15 Mins',
                  rate: '4.5',
                ),
              ],
            ),
          ),
        ),
        // Stack(
        //   clipBehavior: Clip.none,
        //   alignment: Alignment.center,
        //   children: [
        //     Positioned(
        //       top: 55,
        //       child: Container(
        //         width: 150,
        //         height: 180,
        //         padding: EdgeInsets.only(
        //           left: 10,
        //           right: 10,
        //           top: 15,
        //           bottom: 10,
        //         ),
        //         decoration: BoxDecoration(
        //           color: Color(0xffd9d9d9),
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: Column(
        //           children: [
        //             Container(
        //               padding: EdgeInsets.only(top: 50),
        //               width: 130,
        //               child: Text(
        //                 'Classic Greek Salad',
        //                 style: TextStyle(
        //                   color: Color(0xff484848),
        //                   fontWeight: FontWeight.w800,
        //                 ),
        //                 maxLines: 2,
        //                 softWrap: true,
        //                 textAlign: TextAlign.center,
        //               ),
        //             ),
        //             Spacer(),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               crossAxisAlignment: CrossAxisAlignment.end,
        //               children: [
        //                 SizedBox(
        //                   width: 100,
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         'Time',
        //                         style: TextStyle(
        //                           fontSize: 11,
        //                           color: Color(0xffa9a9a9),
        //                           fontWeight: FontWeight.w300,
        //                         ),
        //                       ),
        //                       SizedBox(height: 10, width: 8),
        //                       Text(
        //                         '15 Mins',
        //                         style: TextStyle(
        //                           fontSize: 11,
        //                           color: Color(0xff484848),
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 Container(
        //                   width: 24,
        //                   height: 24,
        //                   decoration: BoxDecoration(
        //                     color: Colors.white,
        //                     borderRadius: BorderRadius.circular(100),
        //                   ),
        //                   child: Icon(
        //                     Icons.turned_in_not,
        //                     size: 16,
        //                     color: Color(0xff129575),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Container(
        //       alignment: Alignment(50, 0),
        //       width: 110,
        //       height: 110,
        //       child: ClipOval(
        //         child: Image.asset(
        //           'assets/foods/food1.jpg',
        //           width: 110,
        //           height: 110,
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       right: -20,
        //       top: 30,
        //       child: Container(
        //         width: 50,
        //         padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        //         decoration: BoxDecoration(
        //           color: Color(0xffffe1b3),
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Icon(Icons.star_rate, size: 13, color: Color(0xffffad30)),
        //             Text(
        //               '4.5',
        //               style: TextStyle(
        //                 fontSize: 11,
        //                 fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
