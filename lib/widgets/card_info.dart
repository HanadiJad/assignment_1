import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key, required this.total, required this.title});

  final double total;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total.toString(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
