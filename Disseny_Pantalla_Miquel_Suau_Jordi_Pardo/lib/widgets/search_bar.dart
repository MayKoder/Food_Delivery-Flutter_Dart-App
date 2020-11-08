
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ), //
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: double.infinity, child: Icon(Icons.search)),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15, right: 15),
                hintText: "Search place",
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Icon(Icons.filter_list_outlined, color: Colors.white),
            color: Colors.orange[900],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
          )
        ],
      ),
    );
  }
}