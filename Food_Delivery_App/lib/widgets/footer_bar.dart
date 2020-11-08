import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.home, color: Colors.grey[100]),
                iconSize: 35,
                onPressed: () {}),
            IconButton(
                icon:
                    Icon(Icons.favorite_outline, color: Colors.grey[100]),
                iconSize: 35,
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined,
                    color: Colors.grey[100]),
                iconSize: 35,
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.person_outline, color: Colors.grey[100]),
                iconSize: 35,
                onPressed: () {}),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.orange[900],
            borderRadius: BorderRadius.all(Radius.circular(60))),
      );
  }
}