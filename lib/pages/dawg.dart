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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
        // Expanded(
        //   flex: 4,
        //   child: Stack(
        //     children: [
        //       const SizedBox(
        //         height: 500,
        //         child: Image(
        //           image: AssetImage('assets/images/dog_7.jfif'),
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //       Positioned(
        //         bottom: 0,
        //         child: Container(
        //           height: 30,
        //           width: MediaQuery.of(context).size.width,
        //           decoration: const BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(30.0),
        //               topRight: Radius.circular(30.0),
        //             ),
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height * .6,
              decoration: BoxDecoration(
                color: Colors.grey,
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.85, 0.2],
                ),
              ),
            ),
            SafeArea(
                child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/dog_2.jfif',
                height: size.height * .45,
                fit: BoxFit.cover,
              ),
            )),
            // SafeArea(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //     child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           IconButton(
            //             onPressed: () {
            //               Navigator.pop(context);
            //             },
            //             icon: const Icon(Icons.arrow_back_ios),
            //           ),
            //           IconButton(
            //             onPressed: () {},
            //             icon: const Icon(Icons.ios_share_outlined),
            //           ),
            //         ]),
            //   ),
            // ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: size.height * .15,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        blurRadius: 30,
                        offset: const Offset(0, 20),
                      )
                    ]),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                            'Dawg',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          )),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(.5),
                              color: Colors.yellow,
                            ),
                            child: Icon(Icons.expand),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'German Sheperd\t 8m',
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/images/dogs_paw.jpg'),
          ),
          title: Text(
            'About Dawg',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
              'The Dawg, charming boost a velvety asdasjdhasjdhaskjh dkajshd khda kjshkshdkashdk jshdk jaskdjahkdhakjdhakjdhas kjshdksjhd kjshd asdsaa sdad asd as dasda sas asasd asd asd a asd'),
          // Container(
          // for 3 boxes
          // ),
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
