import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String path;
  final String title;
  final String subTitle;
  final String price;

  FoodCard(this.path, this.title, this.subTitle, this.price);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05),spreadRadius: 8,blurRadius: 12,offset: Offset(0,8))],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(350, 70),
            bottomRight: Radius.circular(50),
            topLeft: Radius.circular(30), 
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image(image: AssetImage(path))),
            SizedBox(height: 30),
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(subTitle, style: TextStyle(fontSize: 13)),
            SizedBox(height: 25),
            Text("\$" + price, style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded( 
              child: Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.orange[900],
                  mini: true,
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
