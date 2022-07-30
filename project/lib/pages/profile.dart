import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';


MainFunc main_func = new MainFunc();

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

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
                    color: Colors.white,
                  ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/samurai-head-warrior-illustration-design_113398-382.jpg?w=2000'),
                    radius: 50,
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Row(
                    children: [
                      Icon(Icons.contact_mail,size: 25,color: Colors.white,),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text('Samurai@mail.ru',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  /*IconButton(onPressed: (){
                    Navigator.pushNamed(context,'/map');
                  }, icon: Icon(Icons.home)),*/
                  Padding(padding: EdgeInsets.only(top: 15)),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/map');
                  },
                      child: Text('Go to Map'))
                ],
              )
            ],
          ),
        ),
      );
  }
}