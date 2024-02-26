import 'package:flutter/material.dart';
import 'package:prelim/HomeScreen.dart';
import 'package:prelim/pages/catalog.dart';

class dawg extends StatefulWidget {
  const dawg({super.key});

  @override
  State<dawg> createState() => _dawgState();
}

class _dawgState extends State<dawg> {
  int index = 0;

  // final screens = [
  //   const Center(child: Text('Home', style: TextStyle(fontSize: 72))),
  //   const catalog(),
  //   //const Center(child: Text('Catalog', style: TextStyle(fontSize: 72))),
  //   const Center(child: Text('Cart', style: TextStyle(fontSize: 72))),
  //   const Center(child: Text('Profile', style: TextStyle(fontSize: 72))),
  // ];

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
                    builder: (context) => const HomeScreen(),
                  ),
                )),
      ),
      // body: screens[index],
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Stack(
            children: [
              const SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('assets/images/dog_7.jfif'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
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
