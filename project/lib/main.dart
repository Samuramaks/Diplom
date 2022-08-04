import 'package:flutter/material.dart';
import 'package:project/pages/mainscreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
         backgroundColor: Colors.indigo, //тут почему то не хочет отображать цвет панели
         unselectedItemColor: Colors.black,//тут невыбранные элементы отображаются цветом
         selectedItemColor: Colors.green,//цвет выбранного элемента
       ),
     ),
      initialRoute: '/',
      routes: {
       '/': (context) => MainScreen(),
      },
    );
  }
}








