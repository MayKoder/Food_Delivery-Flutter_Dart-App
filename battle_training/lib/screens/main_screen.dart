import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    final users = db.collection('users');
    return StreamBuilder(
      
        stream: db.collection('users').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          final docs = snapshot.data.docs;
          final user = docs[0];
          return Scaffold(
            appBar: AppBar(title: Text("Battle Training")),
            body: Column(
              children: [
                Container(child: Text('${docs[0].data()["uid"]}'),),
                RaisedButton(onPressed: (){users.doc("jordi").update({'uid':20});}),
              ],
            ),
          );
        });
  }
}
