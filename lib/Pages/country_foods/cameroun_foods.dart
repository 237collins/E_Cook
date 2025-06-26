import 'package:flutter/material.dart';

class CamerounFoods extends StatefulWidget {
  const CamerounFoods({super.key});

  @override
  State<CamerounFoods> createState() => _CamerounFoodsState();
}

class _CamerounFoodsState extends State<CamerounFoods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
      child: Column(children: [Text('Les bouffes du kamer')]),
    );
  }
}
