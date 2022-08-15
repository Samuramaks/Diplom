import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';


MainFunc main_func = new MainFunc();

class BackgroundMap extends StatelessWidget {
  const BackgroundMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(Map());
  }
}

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _Map();
}

class _Map extends State<Map> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 45)),
                Text('Map',style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigo,
                ),),
                Padding(padding: EdgeInsets.only(right: 15)),
              ],
            )
          ],
        ),
      ),
    );
  }
}