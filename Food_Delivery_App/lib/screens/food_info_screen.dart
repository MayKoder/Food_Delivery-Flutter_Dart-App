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
          Expanded(flex: 2, child: _TopBar()),
          Expanded(flex: 4, child: _UserInfo()),
          Expanded(flex: 2, 
            child: Row(children: [
              Icon(Icons.search),
              FlatButton(
                onPressed: (){}, 
                child: Icon(Icons.filter_list_outlined, color: Colors.white,), 
                color: Colors.orange[900],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              )
            ],),
          ),
          Expanded(
              flex: 3,
              child: Column(children: [
                Row(
                  children: [
                    _CreateButton("Burger", autoFocused: true),
                    SizedBox(width: 24),
                    _CreateButton("Pizza"),
                    SizedBox(width: 24),
                    _CreateButton("Sandwitch")
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    _CreateButton("Sauces"),
                    SizedBox(width: 24),
                    _CreateButton("Others"),
                  ],
                ),
              ])),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                textColor: Color(0xFF6200EE),
                onPressed: () {},
                child: Text("see more",
                    style: TextStyle(color: Colors.orange[900])),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column
                  (
                    children: [             
                      Expanded(child: Image(image: AssetImage('Burger1.png'))),
                      Expanded(child: Text("Double Patty Burger", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
                      Expanded(child: Text("Hot Spicy with garlic")),
                      Expanded(child: Text("\$25.00", style: TextStyle(fontWeight: FontWeight.bold))), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("Hola"),
                          ),
                      ],),
                    ],
                  ),
                  
                  Text("ham2")
                ],
              )),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 10, color: Colors.orange[900]),
                SizedBox(width: 9),
                Icon(Icons.circle, size: 10, color: Colors.grey[300]),
                SizedBox(width: 9),
                Icon(Icons.circle, size: 10, color: Colors.grey[300]),
                SizedBox(width: 9),
                Icon(Icons.circle, size: 10, color: Colors.grey[300]),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.grey[100],
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 35,
                    color: Colors.grey[100],
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 35,
                    color: Colors.grey[100],
                  ),
                  Icon(
                    Icons.person_outline,
                    size: 35,
                    color: Colors.grey[100],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
          ),
        ],
      ),
    );
  }

  FlatButton _CreateButton(String text, {bool autoFocused = false}) =>
      FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(
              color: autoFocused ? Colors.grey[300] : Colors.grey[500]),
        ),
        autofocus: autoFocused,
        focusColor: Colors.orange[900],
        color: Colors.grey[200],
        hoverColor: Colors.orange[700],
        onPressed: () {},
      );
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.list,
          size: 36,
        ),
        Icon(
          Icons.shopping_cart_outlined,
          size: 36,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class _UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi David,",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Text("Let's enjoy quality food",
            style: TextStyle(fontSize: 20, color: Colors.grey)),
      ],
    );
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
