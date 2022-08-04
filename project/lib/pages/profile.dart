import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';


MainFunc main_func = new MainFunc();



class BackGroundProfile extends StatelessWidget {
  const BackGroundProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(User());
  }
}

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _User();
}

class _User extends State<User> {

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
                  Text('Samurai',
                    style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo,
                  ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/samurai-head-warrior-illustration-design_113398-382.jpg?w=2000'),
                    radius: 50,
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Row(
                    children: [
                      Icon(Icons.contact_mail,size: 25,color: Colors.indigo,),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text('Samurai@mail.ru',style: TextStyle(color: Colors.indigo,fontSize: 25),),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Padding(padding: EdgeInsets.only(top: 15)),
                ],
              )
            ],
          ),
        ),
      );
  }
}