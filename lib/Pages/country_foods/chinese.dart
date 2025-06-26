import 'package:flutter/material.dart';

class Chinese extends StatefulWidget {
  const Chinese({super.key});

  @override
  State<Chinese> createState() => _ChineseState();
}

class _ChineseState extends State<Chinese> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
      child: Column(children: [Text('Les bouffes Chinoises')]),
    );
  }
}
