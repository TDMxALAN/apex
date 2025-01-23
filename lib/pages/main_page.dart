import 'package:apex/pages/main_screens/cart_page.dart';
import 'package:apex/pages/main_screens/favourite_page.dart';
import 'package:apex/pages/main_screens/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _mainPages = [
    HomePage(),
    FavouritePage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
          ),
          Icon(
            _selectedIndex == 1 ? Icons.favorite : Icons.favorite_outline,
          ),
          Icon(
            _selectedIndex == 2
                ? Icons.shopping_cart
                : Icons.shopping_cart_outlined,
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      body: _mainPages[_selectedIndex],
    );
  }
}
