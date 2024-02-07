import 'package:flutter/material.dart';
import 'package:feverpay/screens/arcade.dart';
import 'package:feverpay/screens/home.dart';
import 'package:feverpay/screens/me.dart';
import 'package:feverpay/screens/nearby.dart';
import 'package:feverpay/screens/scan.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          NearbyPage(),
          ScanPayPage(),
          ArcadePage(),
          MePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code, color: Colors.transparent,),
            label: 'Scan & Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Arcade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Me',
          ),
        ],
        selectedItemColor: Colors.pink,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: const Icon(Icons.qr_code_scanner_sharp),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

