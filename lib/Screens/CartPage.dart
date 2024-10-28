import 'package:flutter/material.dart';

import '../Navigation/SideBarMenu.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool firstvalue = false;
  // var numberofitemsselected = Itemvalue(firstvalue);
  // Int Itemvalue(var fvalue) {
  //   var number;
  //   if (fvalue == true) {
  //     number += 1;
  //   } else {
  //     number -= 1;
  //   }
  //   return number;
  // }

  bool secondvalue = false;
  var screennumber = 0;

  final productarray = [
    {'name': 'Tomato', 'stars': 4, 'cost': '25/Kg'}
  ];

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
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: InkWell(
                        child: Text(
                          "All Items",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: InkWell(
                        child: Text(
                          "Products",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return allItems();
                            },
                          ));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Container(
                      child: Column(
                        children: [],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class allItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 20,
        child: Container(
          child: Text("kjsnck"),
        ),
      ),
    );
  }
}
