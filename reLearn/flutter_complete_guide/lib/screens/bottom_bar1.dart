import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/cart.dart';
import 'package:flutter_complete_guide/screens/feeds.dart';
import 'package:flutter_complete_guide/screens/home.dart';
import 'package:flutter_complete_guide/screens/search.dart';
import 'package:flutter_complete_guide/screens/user_info.dart';

class BottomBarShow extends StatefulWidget {
  static const routeName = '/BottomBarScreenShow';

  @override
  State<BottomBarShow> createState() => _BottomBarShowState();
}

class _BottomBarShowState extends State<BottomBarShow> {
  List _pages1 = [
    Home(),
    Feeds(),
    Search(),
    Cart(),
    UserInfo(),
  ];

  int _selectedIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages1[2],
    );
  }
}
