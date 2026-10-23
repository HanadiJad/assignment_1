import 'package:flutter/material.dart';
import 'package:user_profile/widgets/card_info.dart';

class CardItemsWidget extends StatelessWidget {
  const CardItemsWidget({
    super.key,
    required this.image,
    required this.name,
    required this.speciality,
  });

  final String image;
  final String name;
  final String speciality;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            offset: const Offset(10, 10),
            blurRadius: 20,
            spreadRadius: -15,
          ),
        ],
      ),
      padding: EdgeInsets.all(6),
      height: 190,
      child: Card(
        color: Colors.blueAccent,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(7),
          child: Column(
            spacing: 25.0,
            children: [
              Row(
                spacing: 22.0,
                mainAxisAlignment: .center,
                children: [
                  CircleAvatar(radius: 45, backgroundImage: AssetImage(image)),

                  Column(
                    spacing: 5.0,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(speciality, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardInfoWidget(total: 852, title: 'Collect'),
                  CardInfoWidget(total: 51, title: 'Attention'),
                  CardInfoWidget(total: 276, title: 'Track'),
                  CardInfoWidget(total: 39, title: 'Coupons'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
