import "package:e_commerce_app/pages/cart_page.dart";
import "package:e_commerce_app/pages/shop_page.dart";
import 'package:flutter/material.dart';
import "package:e_commerce_app/components/bottom_nav.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Image.asset(
                          "assets/images/nike.png",
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        height: 60,
                        thickness: 0.2,
                        color: Colors.grey,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "H O M E",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "A B O U T",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 32,
                    ),
                    title: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "L O G O U T",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
