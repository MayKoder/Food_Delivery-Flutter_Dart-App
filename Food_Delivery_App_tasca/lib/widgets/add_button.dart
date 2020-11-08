
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.orange[900],
          mini: true,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}