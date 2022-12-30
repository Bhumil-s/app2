import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterforbeginners2/screen/Fifth_screen.dart';
import 'package:flutterforbeginners2/screen/first_screen.dart';
import 'package:flutterforbeginners2/screen/fourth_screen.dart';
import 'package:flutterforbeginners2/screen/second_screen.dart';
import 'package:flutterforbeginners2/screen/third_screen.dart';




class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

 static int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    first(),
    second(),
    third(),
    fourth(),
    fifth(),
  ];

 
  void _onItemTapped(int index) {
    setState(() {
      // color:_selectedIndex == index? Colors.amber:Colors.white;
      _selectedIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home
            
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'wish list',
            
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ));
  }
}