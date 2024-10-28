import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/ChatPage.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "MyProducts",
        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.searchengin,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChatPage();
              }));
            },
            icon: FaIcon(
              FontAwesomeIcons.signalMessenger,
              color: Colors.black,
            ))
      ],
    );
  }
}
