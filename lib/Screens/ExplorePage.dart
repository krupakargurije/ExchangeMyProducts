import 'package:flutter/material.dart';

import '../Navigation/SideBarMenu.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.keyboard_voice_rounded,
            size: 30,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.add_shopping_cart_outlined,
            size: 27,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(child: Text("Explore Page")),
    );
  }
}
