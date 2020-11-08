import 'package:flutter/material.dart';

//Own Widgets
import '../widgets/top_bar.dart';
import '../widgets/user_info.dart';
import '../widgets/search_bar.dart';
import '../widgets/options.dart';
import '../widgets/preview_cards.dart';
import '../widgets/footer_bar.dart';

class FoodMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 1, child: _SearchScreen()),
      ],
    ));
  }
}

class _SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: _ScreenElements(),
    );
  }
}

class _ScreenElements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 2, child: TopBar()),
        Expanded(flex: 4, child: UserInfo()),
        Expanded(flex: 3, child: SearchBar()),
        Expanded(flex: 5, child: Options()),
        Expanded(flex: 12, child: PreviewCards()),
        Expanded(flex: 3, child: _DotsCount()),
        Expanded(flex: 3, child: FooterBar()),
      ],
    );
  }
}

class _DotsCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}