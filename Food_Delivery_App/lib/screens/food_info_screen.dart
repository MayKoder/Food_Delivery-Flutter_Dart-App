import 'package:flutter/material.dart';

class FoodInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          
      children: [
        Expanded(
          flex: 1,
          child: _FoodInfo(),
          ),
      ],
    ));
  }
}

class _FoodInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(flex: 1, child: _TopBar()),
          Expanded(flex: 2, child: _UserInfo()),
          Expanded(flex: 1, child: Text("data3")/* Search Bar*/),
          Expanded(flex: 1, child: Column(children: [
            Row(children: [_CreateButton("Burger"),_CreateButton("Pizza"),_CreateButton("Sandwitch")],),
            Row(children: [Text("item1"),Text("item2"),],),
          ],)),
          Expanded(flex: 1, child: Text("data5")),
          Expanded(flex: 1, child: Text("data6")),
          Expanded(flex: 1, child: Text("data7")),
        ],
      ),

    );
  }

  FlatButton _CreateButton(String text) => FlatButton(child: Text(text),color: Colors.grey[200],hoverColor:Colors.orange[900] , onPressed: (){},);
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.list,size: 36,),
        Icon(Icons.shopping_cart_outlined,size: 36,color: Colors.grey,),

    ],);
  }
}

class _UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Hi David,",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
      Text("Let's enjoy quality food",style: TextStyle(fontSize: 20,color: Colors.grey)),
    ],);
  }
}

class _FoodPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.amber,
    );
  }
}
