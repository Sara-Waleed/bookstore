import 'package:flutter/material.dart';

import 'HomePage.dart';


class StartPoint extends StatefulWidget {
  @override
  _StartPointState createState() => _StartPointState();
}
class _StartPointState extends State<StartPoint> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     HomePage(),
    // FavItems(),
    // Purchasing_Items(),
    // Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.grey,),
            label: 'Favorate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Colors.grey,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

