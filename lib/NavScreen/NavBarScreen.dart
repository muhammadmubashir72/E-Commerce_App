// ignore_for_file: prefer_final_fields, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../bottomScreen/bagScreen/BagScreen.dart';
import '../bottomScreen/favoriteScreen/FavoriteScreen.dart';
import '../bottomScreen/homeScreen/FashionSaleScreen.dart';
import '../bottomScreen/profileScreen/profileScreen.dart';
import '../bottomScreen/shopScreen/CategoriesScreen.dart';

class navigationScreen extends StatefulWidget {
  const navigationScreen({super.key});

  @override
  State<navigationScreen> createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  int selectedIndex = 0;
  
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );
  List<Widget> _screens = [
    const HomeScreen(),
    const ShopScreen(),
    const BagScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff1E1F28),
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (tappedindex) {
              setState(() {
                selectedIndex = tappedindex;
                controller.animateToPage(tappedindex,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceIn);
              });
            },
            selectedItemColor: Color(0xffEF3651),
            selectedLabelStyle: TextStyle(color: Color(0xffEF3651)),
            unselectedItemColor: Colors.grey[700],
            unselectedLabelStyle: TextStyle(color: Colors.grey[700]),
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home",
                  tooltip: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  label: "Shop",
                  tooltip: "BUY EVEYRY THINGS"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.badge,
                  ),
                  label: "Bag",
                  tooltip: "CHECKOUT"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: "Favorites",
                  tooltip: "YOUR FAVOURITE"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  label: "Profile",
                  tooltip: "PROFILE"),
            ]),
        body: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            children: _screens));
  }
}
