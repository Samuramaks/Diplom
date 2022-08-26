import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';


MainFunc main_func = new MainFunc();


class BackgroundNews extends StatelessWidget {
  const BackgroundNews({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(News());
  }
}

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);
  @override
  State<News> createState() => _News();
}

class _News extends State<News> {

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
                Text('News',style: TextStyle(
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
