import 'package:flutter/material.dart';

import 'foodCard.dart';

class PreviewCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FoodCard("Burger1.png", "Double Patty Burger", "Hot Spicy with garlic",
            "25.00"),
        SizedBox(width: 35),
        FoodCard("Burger2.png", "Nagga Beef Burger", "Hot Spicy with garlic",
            "30.00"),
      ],
    );
  }
}