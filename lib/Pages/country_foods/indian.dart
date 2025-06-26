import 'package:flutter/material.dart';

class Indian extends StatefulWidget {
  const Indian({super.key});

  @override
  State<Indian> createState() => _IndianState();
}

class _IndianState extends State<Indian> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
      child: Column(children: [Text('Les bouffes indiennes')]),
    );
  }
}
