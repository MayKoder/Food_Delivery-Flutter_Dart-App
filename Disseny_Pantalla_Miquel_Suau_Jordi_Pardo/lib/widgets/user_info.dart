import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hi Pau,",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Text("Let's enjoy quality food",
            style: TextStyle(fontSize: 20, color: Colors.grey)),
      ],
    );
  }
}
