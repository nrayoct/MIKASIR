import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mikasir/home.dart';
import 'package:mikasir/transaksi.dart';
import 'package:mikasir/produk.dart';

class NavbarPage extends StatefulWidget {
  @override
  _NavbarPageState createState() => new _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [Home(), Transaksi(), Produk()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(235, 184, 68, 1),
        onTap: onTappedBar,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.add, size: 30),
        ],
      ),
    );
  }
}
