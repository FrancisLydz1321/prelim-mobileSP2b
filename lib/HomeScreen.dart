import 'package:flutter/material.dart';
import 'package:prelim/onBoardScreen.dart';
import 'package:prelim/pages/catalog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final screens = [
    const Center(child: Text('Home', style: TextStyle(fontSize: 72))),
    const catalog(),
    //const Center(child: Text('Catalog', style: TextStyle(fontSize: 72))),
    const Center(child: Text('Cart', style: TextStyle(fontSize: 72))),
    const Center(child: Text('Profile', style: TextStyle(fontSize: 72))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
            onPressed: () => Navigator.of(context).pushReplacement(
                  // this reverts back to the onBoardScreen
                  MaterialPageRoute(
                    builder: (context) => const onBoardScreen(),
                  ),
                )),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.yellowAccent,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
            height: 80,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() {
                  this.index = index;
                }),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.book_online_outlined), label: 'Catalog'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}

// Widget catalog() {}
