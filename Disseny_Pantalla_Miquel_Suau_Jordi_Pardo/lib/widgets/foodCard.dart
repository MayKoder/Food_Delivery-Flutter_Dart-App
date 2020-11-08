import 'package:flutter/material.dart';

import 'add_button.dart';

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
        decoration: _cardBoxDecoration(),
        child: _CardContent(
            path: path, title: title, subTitle: subTitle, price: price),
      ),
    );
  }

  BoxDecoration _cardBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.06),
            spreadRadius: 8,
            blurRadius: 12,
            offset: Offset(0, 8))
      ],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.elliptical(350, 70),
        bottomRight: Radius.circular(50),
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    @required this.path,
    @required this.title,
    @required this.subTitle,
    @required this.price,
  });

  final String path;
  final String title;
  final String subTitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _imageProduct(),
        SizedBox(height: 30),
        _titleText(),
        SizedBox(height: 5),
        _subTitleText(),
        SizedBox(height: 25),
        _priceText(),
        AddButton(),
      ],
    );
  }

  Container _imageProduct() =>  Container(alignment: Alignment.center, child: Image(image: AssetImage(path)));

  Text _titleText() => Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));

  Text _subTitleText() => Text(subTitle, style: TextStyle(fontSize: 13));

  Text _priceText() => Text("\$" + price, style: TextStyle(fontWeight: FontWeight.bold));

  
}

