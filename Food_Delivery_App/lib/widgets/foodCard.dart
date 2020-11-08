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
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image(image: AssetImage(path))),
            SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(subTitle),
            SizedBox(height: 10),
            Text("\$" + price, style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.orange[900],
                mini: true,
                child: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
