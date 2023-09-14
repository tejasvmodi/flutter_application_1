import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  // const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed:(){},
      //   child: Icon(Icons.camera_alt_rounded),
      //   backgroundColor: Colors.green,
      //   foregroundColor: Colors.white,
      //   elevation: 12,
      //  mini: true,
      // ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.blue,
      //   color: Colors.white,
      //   animationDuration: Duration(milliseconds: 300),
      //   items: [
      //     Icon(Icons.home),
      //     Icon(Icons.camera),
      //     Icon(Icons.person),
      //   ],
      // ),
    );
  }
}