import 'package:flutter/material.dart';
import 'package:project/Theme/colors.dart';
import 'package:project/pages/mainscreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // appBarTheme: AppBarTheme(
        //   backgroundColor: AppColors.main_gray,
        // ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.main_grey, //тут почему то не хочет отображать цвет панели
          unselectedItemColor: Colors.white70,//тут невыбранные элементы отображаются цветом
          selectedItemColor: AppColors.main_indigo,//цвет выбранного элемента
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
      },
    );
  }
}