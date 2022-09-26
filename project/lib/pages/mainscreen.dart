import 'package:flutter/material.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/map.dart';
import 'package:project/pages/news.dart';
import 'package:project/pages/calendar.dart';
import 'package:project/pages/authorization.dart';
import 'package:project/Theme/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selected_tab = 3;
  static const List<Widget> _widget_options = <Widget>[
    BackgroundNews(),
    BackgroundMap(),
    BackgroundCalendar(),
    BackGroundAuthorization(),
  ];

  void OnSelectedTab(int index) {
    if (_selected_tab == index) return;
    setState(() {
      _selected_tab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget_options[_selected_tab],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: AppColors.main_grey,
          currentIndex: _selected_tab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "Новости",
              // backgroundColor: Colors.black38,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: "Карта",
              // backgroundColor: Colors.black38,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Календарь",
              // backgroundColor: Colors.black38,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Профиль",
              backgroundColor: AppColors.main_grey,
            ),
          ],
          // backgroundColor: Colors.amber[800],
          onTap: OnSelectedTab,
        ),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.white10, spreadRadius: 0, blurRadius: 4)
          ],
        ), // don't forget to put it
      ),
    );
  }
}
