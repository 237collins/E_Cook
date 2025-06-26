import 'package:flutter/material.dart';

class Asian extends StatefulWidget {
  const Asian({super.key});

  @override
  State<Asian> createState() => _AsianState();
}

class _AsianState extends State<Asian> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
      child: Column(children: [Text('Les bouffes Asiatiques')]),
    );
  }
}
