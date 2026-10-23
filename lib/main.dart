import 'package:flutter/material.dart';
import 'package:user_profile/widgets/card_items.dart';
import 'package:user_profile/widgets/icon_row.dart';
import 'package:user_profile/widgets/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Center',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            CardItemsWidget(
              image: 'images/user.png',
              name: 'Hanadi Mohammed Abu ALJadayel',
              speciality: 'A Trendsetter',
            ),

            Spacer(),

            Container(
              padding: EdgeInsets.all(12),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconsRowWidget(
                      icon: Icons.wallet,
                      iconColor: Colors.black,
                      title: 'Wallet',
                    ),
                    IconsRowWidget(
                      icon: Icons.delivery_dining_rounded,
                      iconColor: Colors.black,
                      title: 'Delivery',
                    ),
                    IconsRowWidget(
                      icon: Icons.message,
                      iconColor: Colors.black,
                      title: 'Messages',
                    ),
                    IconsRowWidget(
                      icon: Icons.monetization_on,
                      iconColor: Colors.black,
                      title: 'Service',
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),

            ListItemsWidget(
              backgroundColor: Colors.deepPurpleAccent,
              title: 'Address',
              desc: '          Address info          ',
              icon: Icons.location_on,
            ),
            ListItemsWidget(
              backgroundColor: Colors.pinkAccent,
              title: 'Privacy',
              desc: 'System Permission change',
              icon: Icons.lock,
            ),
            ListItemsWidget(
              backgroundColor: Colors.orangeAccent,
              title: 'General',
              desc: 'Basic Functional Settings',
              icon: Icons.layers,
            ),
            ListItemsWidget(
              backgroundColor: Colors.lightBlue,
              title: 'Notification',
              desc: 'Take over the news in time',
              icon: Icons.notifications,
            ),
          ],
        ),
      ),
    );
  }
}
