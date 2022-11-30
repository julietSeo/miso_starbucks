import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'miso_first_page.dart';
import 'miso_second_page.dart';
import 'miso_third_page.dart';
import 'miso_fourth_page.dart';
import 'values.dart';

class Miso extends StatefulWidget {
  const Miso({Key? key}) : super(key: key);

  @override
  State<Miso> createState() => _MisoState();
}

class _MisoState extends State<Miso> {
  int currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIdx,
        children: [
          MisoFirstPage(),
          MisoSecondPage(),
          MisoThirdPage(),
          MisoFourthPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
        onTap: (newIdx) {
          print("selected Index: $newIdx");
          setState(() {
            currentIdx = newIdx; // 페이지 이동
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: "Event"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "MyPage")
        ],
        selectedItemColor: misoPrimaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
