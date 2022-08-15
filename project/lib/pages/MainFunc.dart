import 'package:flutter/material.dart';
import 'package:project/Theme/colors.dart';


class MainFunc extends StatelessWidget {
  const MainFunc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget BackGround(Widget name){
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/background.png"),
          fit: BoxFit.contain,
          opacity: .17),
<<<<<<< HEAD
          color: Colors.black),
=======
          color: AppColors.main_grey),
>>>>>>> master
      child: name,
    );
  }
}