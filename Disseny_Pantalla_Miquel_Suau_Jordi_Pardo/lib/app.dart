import 'package:flutter/material.dart';

import 'screens/food_info_screen.dart';

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodMainApp(),
    );
  }
}

