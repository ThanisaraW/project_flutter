import 'package:basic_widget/home_screen.dart';
import 'package:basic_widget/layout_screen.dart';
import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {

  int _selectedIndex = 0;

  List<String> screen = [
    'Home',
    'Shop',
    'Friends',
    'Notifications',
  ];

  final List<Widget> _pages = [
    HomeScreen(),
    LayoutScreen(),
    HomeScreen(),
    LayoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      //Navigation bar
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, size: 30),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 30),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 30),
            label: 'Notifications',
          ),
        ], 
      ),
    );
  }
}