import 'package:flutter/material.dart';
import 'package:my_products/Screens/ExchangePages/BuyPage.dart';

import '../../Navigation/SideBarMenu.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});
  @override
  State<ExchangePage> createState() => _SwapPageState();
}

class _SwapPageState extends State<ExchangePage> {
  var arrayData = [
    {
      'name': 'Tomato',
      'image': 'assets/images/pic1.jpeg',
      'stars': 5,
      'cost': '60/Kg'
    },
    {
      'name': 'cauliflower',
      'image': 'assets/images/pic2.jpeg',
      'stars': 4,
      'cost': '35/Kg'
    },
    {
      'name': 'Carrot',
      'image': 'assets/images/pic3.jpeg',
      'stars': 4.5,
      'cost': '50/Kg'
    },
    {
      'name': 'Brinjal',
      'image': 'assets/images/pic4.jpg',
      'stars': 3.5,
      'cost': '50/Kg'
    },
    {
      'name': 'Chayote',
      'image': 'assets/images/pic5.jpg',
      'stars': 5,
      'cost': '150/Kg'
    },
    {
      'name': 'Cabbage',
      'image': 'assets/images/pic6.jpg',
      'stars': 5,
      'cost': '30/Kg'
    },
    {
      'name': 'Cucumber',
      'image': 'assets/images/pic7.jpg',
      'stars': 5,
      'cost': '45/Kg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarPage(),
      drawer: const SideBarMenu(),
      appBar: AppBar(
        title: Text(
          "Exchange",
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
      body: Container(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black38,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BuyPage();
                        },
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Sell",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.black12,
              child: ListView(
                  children: arrayData.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Card(
                            elevation: 20,
                            child: Image.asset(
                              value['image'].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(value['name'].toString()),
                      ],
                    ),
                  ),
                );
              }).toList()),
            ),
          ),
        ],
      )),
    );
  }
}
