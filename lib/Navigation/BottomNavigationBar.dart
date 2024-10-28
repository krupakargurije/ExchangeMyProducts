// import 'package:demo_project/Screens/HomePage.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import '../Screens/ProfilePage.dart';
// import '../Screens/ExplorePage.dart';
// import '../Screens/ExchangePage.dart';
//
//
//
// class BottomNavigationBarPage extends StatelessWidget {
//   const BottomNavigationBarPage({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     final controller = Get.put(NavigationController());
//    return Scaffold(
//      bottomNavigationBar: Obx(
//        () => NavigationBar(
//          height: 80,
//          elevation: 0,
//          selectedIndex: controller.selectedIndex.value,
//          onDestinationSelected: (index) => controller.selectedIndex.value = index,
//          destinations: const [
//            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
//            NavigationDestination(icon: Icon(Iconsax.search_favorite), label: 'Search'),
//            NavigationDestination(icon: Icon(Iconsax.arrow_swap_horizontal), label: 'Swap'),
//            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
//          ],
//        ),
//      ),
//      body: Obx(() => controller.screens[controller.selectedIndex.value]),
//    );
//   }
// }
//
// class NavigationController extends GetxController{
//   final Rx<int> selectedIndex = 0.obs;
//   final screens = [const MainScreen(),const SearchPage(),const SwapPage(),const IdPage()];
// }
//

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Screens/CartPage.dart';
import '../Screens/ExchangePages/ExchangePage.dart';
import '../Screens/ExplorePage.dart';
import '../Screens/HomePage.dart';
import '../Screens/ProfilePage.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarPageState();
  }
}

class BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          MainScreen(),
          ExplorePage(),
          ExchangePage(),
          CartPage(),
          IdPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.backward_item), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.arrow_swap_horizontal), label: 'Exchange'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.black12,
        showUnselectedLabels: true,
        onTap: onTapped,
      ),
    );
  }
}
