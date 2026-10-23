import 'package:flutter/material.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
  });

  final IconData icon;
  final Color iconColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        CircleAvatar(child: Icon(icon, color: iconColor)),
        Text(title, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
