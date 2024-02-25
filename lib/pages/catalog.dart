import 'package:flutter/material.dart';

class catalog extends StatefulWidget {
  const catalog({super.key});

  @override
  State<catalog> createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          getCustomAppBar(),
          // const Text('Search Product or Brand'),
          const SizedBox(height: 25),
          getSearch(),
        ],
      ),
    ));
  }
}

Widget getSearch() {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Container(
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

Widget getCustomAppBar() {
  return Row(
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
