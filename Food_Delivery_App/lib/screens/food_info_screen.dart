import 'package:flutter/material.dart';
import '../widgets/create_button.dart';
import '../widgets/foodCard.dart';

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
          Expanded(
            flex: 3, 
            child: 
            Container(
              margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(Radius.circular(50.0),
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
                        contentPadding:EdgeInsets.only(left: 15, right: 15), 
                        hintText: "Search place",
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.filter_list_outlined, color: Colors.white), 
                    color: Colors.orange[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      CreateButton(text: "Burger",selected: true,),
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
              ]),
              ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                textColor: Color(0xFF6200EE),
                onPressed: () {},
                child: Text("see more",
                    style: TextStyle(fontSize: 17, color: Colors.orange[800])),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FoodCard("Burger1.png", "Double Patty Burger",
                    "Hot Spicy with garlic", "25.00"),
                SizedBox(width: 35),
                FoodCard("Burger2.png", "Nagga Beef Burger",
                    "Hot Spicy with garlic", "30.00"),
              ],
            ),
          ),
          Expanded(
            flex: 3,
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
            flex: 3,
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
      mainAxisAlignment: MainAxisAlignment.center,
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
