import 'package:flutter/material.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/map.dart';
import 'package:project/pages/news.dart';
import 'package:project/pages/calendar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selected_tab = 3;
  static const List<Widget> _widget_options = <Widget>[
    BackgroundNews(),
    BackgroundCalendar(),
    BackgroundMap(),
    BackGroundProfile(),
  ];


  void OnSelectedTab(int index){
    if(_selected_tab == index) return;
    setState(() {
      _selected_tab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget_options[_selected_tab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected_tab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Новости",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Карта",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Календарь",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
          ),
        ],
        onTap: OnSelectedTab,
      ),

    );
  }
}


