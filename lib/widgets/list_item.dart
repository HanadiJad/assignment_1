import 'package:flutter/material.dart';

class ListItemsWidget extends StatelessWidget {
  const ListItemsWidget({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.desc, required this.icon,
  });

  final Color? backgroundColor;
  final String title;
  final String desc;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.5),
            offset: const Offset(2, 2),
            blurRadius: 20,
            spreadRadius: -15,
          ),
        ],
      ),
      height: 80,
      padding: EdgeInsets.all(5),
      child: Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: backgroundColor,
              child: Icon(icon, color: Colors.white),
            ),
            Column(
              spacing: 2,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                  color: Colors.black,
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(desc, style: TextStyle(color: Colors.grey)),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_next, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
