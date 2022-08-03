import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';


MainFunc main_func = new MainFunc();

class BackgroundCalendar extends StatelessWidget {
  const BackgroundCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(Calendar());
  }
}

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);


  @override
  State<Calendar> createState() => _Calendar();
}

class _Calendar extends State<Calendar> {

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
                Text('Calendar',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),),
                Padding(padding: EdgeInsets.only(right: 15)),

                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/');
                }, child: Text('Go'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
