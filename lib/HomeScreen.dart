import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:prelim/onBoardScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Text(
          'asdadadadadaasd asdjlaksdjaskdjaskdjasldjlsaj klasdlaksjdlasjdlaksdjs'),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: BackButton(
            onPressed: () => Navigator.of(context).pushReplacement(
                  // this reverts back to the onBoardScreen
                  MaterialPageRoute(
                    builder: (context) => const onBoardScreen(),
                  ),
                )),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.yellowAccent,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(height: 80, destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.book_online_outlined), label: 'Catalog'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ]),
      ),
    );
  }
}
