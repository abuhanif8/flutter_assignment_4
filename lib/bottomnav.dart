import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/pages/account.dart';
import 'package:flutter_assignment_1/pages/add.dart';
import 'package:flutter_assignment_1/pages/chat.dart';
import 'package:flutter_assignment_1/pages/home.dart';
import 'package:flutter_assignment_1/pages/myads.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  var _currentIndex = 0;

  final _pages = [
    Home(),
    MyAds(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 10,
        child: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          selectedFontSize: 24,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          onTap: (int value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.shopping_cart),
              label: "My Ads",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.add_outlined),
              label: "Add",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.yellow,
              icon: Icon(Icons.chat_outlined),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.person_outline),
              label: "Account",
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
