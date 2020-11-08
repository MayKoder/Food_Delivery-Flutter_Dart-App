
import 'package:flutter/material.dart';

import 'create_button.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CreateButton(text: "Burger", selected: true),
          SizedBox(width: 24),
          CreateButton(text: "Pizza"),
          SizedBox(width: 24),
          CreateButton(text: "Sandwitch"),
        ],
      ),
      SizedBox(height: 15),
      Row(
        children: [
          CreateButton(text: "Sauces"),
          SizedBox(width: 24),
          CreateButton(text: "Others"),
        ],
      ),
      _SeeMoreButton(),
    ]);
  }
}

class _SeeMoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
    alignment: Alignment.centerRight,
    child: FlatButton(
      textColor: Color(0xFF6200EE),
      onPressed: () {},
      child: Text("see more",
          style: TextStyle(fontSize: 17, color: Colors.orange[800])),
    ),
    );
  }
}