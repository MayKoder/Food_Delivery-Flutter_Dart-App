import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.dehaze), iconSize: 36, onPressed: () {}),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
          iconSize: 36,
          onPressed: () {},
        ),
      ],
    );
  }
}
