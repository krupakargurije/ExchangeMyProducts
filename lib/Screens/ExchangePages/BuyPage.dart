import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Navigation/SideBarMenu.dart';
import '../ChatPage.dart';

class BuyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BuyPageState();
  }
}

class BuyPageState extends State<BuyPage> {
  var arrayData = [
    {
      'name': 'Tomato',
      'image': 'assets/images/pic1.jpeg',
      'stars': 5,
      'cost': '60/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'cauliflower',
      'image': 'assets/images/pic2.jpeg',
      'stars': 4,
      'cost': '35/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'Carrot',
      'image': 'assets/images/pic3.jpeg',
      'stars': 4.5,
      'cost': '50/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'Brinjal',
      'image': 'assets/images/pic4.jpg',
      'stars': 3.5,
      'cost': '50/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'Chayote',
      'image': 'assets/images/pic5.jpg',
      'stars': 5,
      'cost': '150/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'Cabbage',
      'image': 'assets/images/pic6.jpg',
      'stars': 4.5,
      'cost': '30/Kg',
      'details': 'Vegetables provide nutrients '
          'vital for health and maintenance of your body, '
          'such as vitamins A and C, fiber, folate, and potassium. ',
    },
    {
      'name': 'Cucumber',
      'image': 'assets/images/pic7.jpg',
      'stars': 4,
      'cost': '45/Kg',
      'details': 'Vegetables ',
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarPage(),
      drawer: const SideBarMenu(),
      appBar: AppBar(
        title: Text(
          "KnowMe",
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
                  return const ChatPage();
                }));
              },
              icon: FaIcon(
                FontAwesomeIcons.signalMessenger,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
          child: Column(
        children: [
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          //   child: Container(
          //     height: 150,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.black38,
          //     ),
          //   ),
          // ),
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
                  onTap: () {},
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
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: 470,
                      child: Column(
                        children: [
                          Card(
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 250,
                              child: Image.asset(
                                value['image'].toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              value['name'].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                value['details'].toString(),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    value['stars'].toString(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                RatingBar(
                                  alignment: Alignment.centerLeft,
                                  initialRating: 0,
                                  maxRating: 5,
                                  emptyColor: Colors.black,
                                  filledColor: Colors.yellow,
                                  filledIcon: Icons.star,
                                  emptyIcon: CupertinoIcons.star,
                                  onRatingChanged: (double) {},
                                  size: 25,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.currency_rupee_rounded),
                                        Text(
                                          value['cost'].toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white10,
                              side: BorderSide(width: 2, color: Colors.black),
                              shadowColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
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
