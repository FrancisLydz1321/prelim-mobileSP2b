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
      body: Text('asdadadadadaasd'),
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
    );
  }
}
