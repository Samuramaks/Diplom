import 'package:flutter/material.dart';



class MainFunc extends StatelessWidget {
  const MainFunc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Widget BackGround(Widget name){
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/background.png"),
          fit: BoxFit.cover),
          color: Colors.black38),
      child: name,
    );
  }
}
