import 'package:flutter/material.dart';
import 'package:prime_kicks/components/bottom_nav_bar.dart';
import 'package:prime_kicks/pages/cart_page.dart';
import 'package:prime_kicks/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //to control bottom navigation bars
  int _selectedIndex = 0;

  //this method will update our selected index
  //when user tap on the bottom bar
  void navigateBottomBar(int index) {
    _selectedIndex = index;
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(children: [
            DrawerHeader(
            child: Image.asset('lib/images/logo.png', color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ],),
          const Padding(
            padding: EdgeInsets.only(left: 25.0,bottom: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
