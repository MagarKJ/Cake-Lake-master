import 'package:cakelake/accounts/profile.dart';
import 'package:cakelake/homepage/homepage.dart';
import 'package:cakelake/homepage/products/cart.dart';
import 'package:cakelake/menu/menu.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(),
    const AccountsPage(),
    const CartPage(),
    const MyMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle_outlined),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text('1'),
              child: Icon(Icons.shopping_cart_outlined),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
