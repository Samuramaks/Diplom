import 'package:flutter/material.dart';
import 'package:project/pages/mainscreen.dart';
import 'package:requests/requests.dart';
import 'dart:convert';
import 'package:project/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';
import 'package:project/services/eios_service.dart';
import 'globalvariables.dart' as global;

MainFunc main_func = new MainFunc();

class BackGroundAuthorization extends StatelessWidget {
  const BackGroundAuthorization({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return main_func.BackGround(Form());
  }
}

class Form extends StatefulWidget {
  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  String? errorText = null;
  void auth() async {
    final username = loginTextController.text;
    final password = passwordTextController.text;

    EiosAPI epi = EiosAPI();
    await epi.login(username, password);
    global.profile_data = await epi.getProfileData();
    global.education_data = await epi.getEducationData();
    // if (username == 'admin' && password == 'admin'){
    //   errorText = null;
    final navigator = Navigator.of(context);
    navigator.push(
        MaterialPageRoute<void>(builder: (context) => MainScreen()));
    // }else{
    //   errorText = 'Неверный логин или пароль';
    // }

    //return profile_data;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    );
    final textFieldDecoration = const InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
      ),
      //isDense: true,

      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      //isCollapsed: true,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          if (errorText != null)
            Text(
              '$errorText',
              style: TextStyle(color: Colors.red),
            ),
          Text(
            'Username',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
            controller: loginTextController,
            decoration: textFieldDecoration,
          ),
          SizedBox(height: 5),
          Text(
            'Password',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
            controller: passwordTextController,
            decoration: textFieldDecoration,
            obscureText: true,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  auth();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(TextStyle()),
                ),
                child: Text('Login'),
              ),
            ],
          )
          //Padding(padding: EdgeInsets.only(right: 15)),
        ],
      ),
    );
  }
}
