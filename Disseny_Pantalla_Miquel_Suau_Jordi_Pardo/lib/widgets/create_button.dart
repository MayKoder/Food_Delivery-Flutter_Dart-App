import 'package:flutter/material.dart';

class CreateButton extends StatefulWidget {
  final String text;
  bool selected;
  CreateButton({
    @required this.text,
    this.selected = false,
  }
  );

  @override
  _CreateButtonState createState() => _CreateButtonState();
}

class _CreateButtonState extends State<CreateButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 40,
      minWidth: 10,
      padding: EdgeInsets.symmetric(horizontal: 25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text( widget.text,
        style:
            TextStyle(fontSize: 16,color: widget.selected ? Colors.grey[300] : Colors.grey[500]),
      ),
      color: widget.selected? Colors.orange[900]: Colors.grey[200],
      hoverColor: Colors.orange[700],
      onPressed: () {
        setState(() {
        widget.selected = !widget.selected;
          
        });
      },
    );
  }
}
