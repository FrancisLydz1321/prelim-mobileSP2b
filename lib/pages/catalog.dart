import 'package:flutter/material.dart';

class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  final List<Map<String, dynamic>> gridMap = [
    {"title": "Dawg", "price": "\$80", "images": '/assets/images/dog_8.jpg'},
    {
      "title": "My_Dawg",
      "price": "\$70",
      "images": '/assets/images/dog_7.jfif'
    },
    {
      "title": "Our_Dawg",
      "price": "\$60",
      "images": '/assets/images/dog_6.jfif'
    },
    {
      "title": "Thou_Dawg",
      "price": "\$50",
      "images": '/assets/images/dog_5.jfif'
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
        Text('asdasdasd'),
        const SizedBox(height: 25),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(right: 14.0, left: 14.0),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey,
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
                      image: const DecorationImage(
                        image: AssetImage('assets/images/dog_9.1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 6,
                    bottom: 6,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.shopping_cart,
                          size: 10, color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class petCard extends StatelessWidget {
  final String? name;
  // final String? type;
  final String? price;
  final String? image;

  const petCard({super.key, this.name, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 14.0, left: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey,
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
                    // image: AssetImage('assets/images/dog_9.1.jpg'),
                    image: AssetImage(image.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 6,
                bottom: 6,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child:
                      Icon(Icons.shopping_cart, size: 10, color: Colors.pink),
                ),
              ),
            ],
          ),
          Text(
            name.toString(),
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
              borderRadius: BorderRadius.circular(20.0), color: Colors.grey),
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



