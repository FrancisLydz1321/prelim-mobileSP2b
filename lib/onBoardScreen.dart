import 'package:flutter/material.dart';
import 'package:prelim/HomeScreen.dart';
import 'package:prelim/data.dart';
import 'package:prelim/styles.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {
  int currentIndex = 0;

  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  _onPageChanged(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 500,
                    child: Image(
                      image: AssetImage('assets/images/dog_9.1.jpg'),
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
            // const DotIndicator(isActive: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < onBoardDataList.length; i++)
                  if (currentIndex == i)
                    const DotIndicator(isActive: true)
                  else
                    const DotIndicator(isActive: false)
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: onBoardDataList.length,
                  itemBuilder: (context, index) => OnBoardPageCard(
                    title: onBoardDataList[index]['title'],
                    subTitle: onBoardDataList[index]['subtitle'],
                  ), 
                )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.yellow, // palette.pRedColor
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      // width: 10,
      width: isActive ? 15 : 10,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: isActive ? Colors.yellow : Colors.grey,
      ),
    );
  }
}

class OnBoardPageCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const OnBoardPageCard({super.key, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30.0),
        Text(
          title.toString(),
          textAlign: TextAlign.center,
          style: onBoardheadingTitle,
        ),
        const SizedBox(height: 20.0),
        Text(
          subTitle.toString(),
          textAlign: TextAlign.center,
          style: onBoardheadingSubtitle,
        ),
      ],
    );
  }
}
