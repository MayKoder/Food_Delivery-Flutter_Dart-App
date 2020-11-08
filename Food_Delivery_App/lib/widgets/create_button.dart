import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final String text;
  final bool selected;
  CreateButton({
    @required this.text,
    this.selected = false,
  }
  );

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text(
        text,
        style:
            TextStyle(color: selected ? Colors.grey[300] : Colors.grey[500]),
      ),
      color: selected? Colors.orange[900]: Colors.grey[200],
      hoverColor: Colors.orange[700],
      onPressed: () {},
    );
  }
}
