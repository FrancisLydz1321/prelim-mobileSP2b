import 'package:flutter/material.dart';

class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  final List<Map<String, dynamic>> dogList = [
    {"name": "Dawg", "price": "\$80", "images": '/assets/images/dog_8.jpg'},
    {
      "name": "My_Dawg",
      "price": "\$70",
      "images": '/assets/images/dog_9.1.jpg'
    },
  ];

  final List<Map<String, dynamic>> dogList2 = [
    {
      "name": "Our_Dawg",
      "price": "\$60",
      "images": '/assets/images/dog_12.jpg'
    },
    {
      "name": "Thou_Dawg",
      "price": "\$50",
      "images": '/assets/images/dog_13.jfif'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(height: 5),
        storeTitle(),
        // const Text('Search Product or Brand'),
        const SizedBox(height: 25),
        getSearch(),
        const SizedBox(height: 25),
        // Text('asdasdasd'),
        const SizedBox(height: 25),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  //   height: 150,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     image: const DecorationImage(
                  //       image: AssetImage('assets/images/dog_9.1.jpg'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 250,
                    // width: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return petCard(
                          name: dogList[index]['name'],
                          images: dogList[index]['image'],
                          price: dogList[index]['price'],
                        );
                      }),
                      itemCount: dogList.length,
                    ),
                  ),
                  // const Positioned(
                  //   right: 6,
                  //   bottom: 6,
                  //   child: CircleAvatar(
                  //     radius: 10,
                  //     backgroundColor: Colors.white,
                  //     child: Icon(Icons.shopping_cart,
                  //         size: 10, color: Colors.pink),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  //   height: 150,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     image: const DecorationImage(
                  //       image: AssetImage('assets/images/dog_9.1.jpg'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 250,
                    // width: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return petCard2(
                          name: dogList2[index]['name'],
                          images: dogList2[index]['image'],
                          price: dogList2[index]['price'],
                        );
                      }),
                      itemCount: dogList2.length,
                    ),
                  ),
                  // const Positioned(
                  //   right: 6,
                  //   bottom: 6,
                  //   child: CircleAvatar(
                  //     radius: 10,
                  //     backgroundColor: Colors.white,
                  //     child: Icon(Icons.shopping_cart,
                  //         size: 10, color: Colors.pink),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 150,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: ((context, index) {
        //       return petCard(
        //         name: dogList[index]['title'],
        //         price: dogList[index]['price'],
        //         image: dogList[index]['image'],
        //       );
        //     }),
        //     itemCount: dogList.length,
        //   ),
        // ),
      ],
    ));
  }
}

class petCard extends StatelessWidget {
  final String? name;
  // final String? type;
  final String? price;
  final String? images;

  const petCard({super.key, this.name, this.price, this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      margin: const EdgeInsets.only(right: 14.0, left: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 154,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/dog_12.jpg'),
                    // image: AssetImage(images.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Positioned(
              //   right: 6,
              //   bottom: 6,
              //   child: CircleAvatar(
              //     radius: 10,
              //     backgroundColor: Colors.white,
              //     child:
              //         Icon(Icons.shopping_cart, size: 10, color: Colors.pink),
              //   ),
              // ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              name.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              price.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Icon(Icons.shopping_cart, size: 10, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child:
                    Icon(Icons.shopping_cart, size: 13, color: Colors.yellow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class petCard2 extends StatelessWidget {
  final String? name;
  // final String? type;
  final String? price;
  final String? images;

  const petCard2({super.key, this.name, this.price, this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      margin: const EdgeInsets.only(right: 14.0, left: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 154,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/dog_14.jpg'),
                    // image: AssetImage(images.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              name.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              price.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Icon(Icons.shopping_cart, size: 10, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child:
                    Icon(Icons.shopping_cart, size: 13, color: Colors.yellow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget storeTitle() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
          child: Text(
        'Store',
        style: TextStyle(fontSize: 22),
      )),
    ],
  );
}

Widget getSearch() {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          margin: const EdgeInsets.only(right: 16.0, left: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: Colors.white),
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search Product or Brand",
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

// import 'package:flutter/material.dart';

// class catalog extends StatefulWidget {
//   const catalog({super.key});

//   @override
//   State<catalog> createState() => _catalogState();
// }

// class _catalogState extends State<catalog> {
//   final List<Map<String, dynamic>> gridMap = [
//     {"title": "Dawg", "price": "\$80", "images": '/assets/images/dog_8.jpg'},
//     {
//       "title": "My_Dawg",
//       "price": "\$70",
//       "images": '/assets/images/dog_7.jfif'
//     },
//     {
//       "title": "Our_Dawg",
//       "price": "\$60",
//       "images": '/assets/images/dog_6.jfif'
//     },
//     {
//       "title": "Thou_Dawg",
//       "price": "\$50",
//       "images": '/assets/images/dog_5.jfif'
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 12.0,
//           mainAxisSpacing: 12.0,
//           mainAxisExtent: 310,
//         ), itemBuilder: (_, index) {
//       return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(
//             16.0,
//           ),
//           color: Colors.yellow,
//         ),
//       );
//     });
//   }
// }
