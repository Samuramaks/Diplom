import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';
import 'package:project/Theme/colors.dart';

MainFunc main_func = new MainFunc();
FormState _formState = new FormState();

//final dynamic data = _formState.au



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
                CircleAvatar(
                  backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/samurai-head-warrior-illustration-design_113398-382.jpg?w=2000'),
                  radius: 70,
                ),

                Padding(padding: EdgeInsets.only(top: 15)),
                Text('Иванов Иван Иванович',style: TextStyle(color: Colors.white,fontSize: 20),),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text('КC-30',style: TextStyle(color: Colors.white,fontSize: 20),),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [

                    Icon(Icons.contact_mail,size: 15,color: Colors.white,),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Text('Ivanov@mail.ru',style: TextStyle(color: Colors.white,fontSize: 15),),

                  ],
                ),


                Padding(padding: EdgeInsets.only(right: 15)),
                Padding(padding: EdgeInsets.only(right: 15)),
                Padding(padding: EdgeInsets.only(top: 15)),

                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                    child: Text('Преподаватели'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Colors.indigo,
                            width: 2.0,
                          ),
                        ),
                        primary: AppColors.main_grey,
                        padding: EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal))
                    ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Padding(padding: EdgeInsets.only(top: 15)),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                    child: Text('Журнал'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Colors.indigo,
                            width: 2.0,
                          ),
                        ),
                        primary: AppColors.main_grey,
                        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal))
                ),
                Padding(padding: EdgeInsets.only(top: 140)),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  child:Text("Выйти"),
                  style: TextButton.styleFrom(
                      primary: Colors.red,
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                  ),
                  ),
              ],

            )
          ],
        ),
      ),
    );
  }
}