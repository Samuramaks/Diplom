import 'package:flutter/material.dart';
import 'package:project/pages/MainFunc.dart';
import 'package:project/Theme/colors.dart';
import 'package:project/pages/authorization.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:project/services/eios_service.dart';
import 'package:project/pages/globalvariables.dart' as global;

MainFunc main_func = new MainFunc();
FormState _formState = new FormState();

//final dynamic data = _formState.au

class BackGroundProfile extends StatelessWidget {
  const BackGroundProfile({super.key});

  @override
  Widget build(BuildContext context) {
    if (global.profile_data == null) {
      return BackGroundAuthorization();
    }
    else {
      return main_func.BackGround(Profile());
    }
  }
}

// class User extends StatefulWidget {
//   const User({Key? key}) : super(key: key);

//   @override
//   State<User> createState() => _User();
// }

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String avatar = global.profile_data['avatar'] as String;
    final dynamic group_info = global.education_data['educations'][0]['education_group'];
    final String email = global.profile_data['emails'][0]['email'] as String;

    print(EiosAPI.auth_header);
    return Container(
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 45)),
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    avatar,
                    headers: EiosAPI.auth_header,
                  ),
                  radius: 70,
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Text(
                  '${global.profile_data['lastname']} ${global.profile_data['firstname']} ${global.profile_data['midname']}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  '${group_info['litter']} - ${group_info['course']}${group_info['number']}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Icon(
                      Icons.contact_mail,
                      size: 15,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Text(
                      '$email',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 15)),
                Padding(padding: EdgeInsets.only(right: 15)),
                Padding(padding: EdgeInsets.only(top: 15)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false);
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                Padding(padding: EdgeInsets.only(left: 15)),
                Padding(padding: EdgeInsets.only(top: 15)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false);
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                Padding(padding: EdgeInsets.only(top: 140)),
                TextButton(
                  onPressed: () {
                    main_func.cleanAuthData();
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  child: Text("Выйти"),
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
