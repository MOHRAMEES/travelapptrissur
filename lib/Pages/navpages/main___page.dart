// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelapptrissur/Pages/navpages/My__page.dart';
import 'package:travelapptrissur/Pages/navpages/bar__item_page.dart';
import 'package:travelapptrissur/Pages/navpages/home__page.dart';
import 'package:travelapptrissur/Pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BaritemPage(), SearchPage(), MyPage()];
  int currentindex = 0;
  void ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: ontap,
          currentIndex: currentindex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(label: ('Home'), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: ('Bar'), icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(
                label: ('Search'), icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: ('My'), icon: Icon(Icons.person)),
          ]),
    );
  }
}
