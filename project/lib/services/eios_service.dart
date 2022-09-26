import 'package:requests/requests.dart';

class EiosAPI {
  final urlAccounts = "https://api.muctr.ru/accounts";
  final urlEducation = "https://api.muctr.ru/education/students/student/";

  late Map<String, dynamic> identities;
  Map<String, String> auth_header = {};

  Future<void> login(String username, String password) async {
    var urlApi = "$urlAccounts/authenticate/login/"; // ?

    Map<String, String> creds = {
      "username": username,
      "password": password,
    };

    var r = await Requests.post(urlApi, body: creds);

    identities = r.json() as Map<String, dynamic>;

    if (identities.containsKey("detail")) {
      throw Exception("Incorrect login");
    }

    auth_header = {"Authorization": "Token ${identities['token']}"};
  }

  Future<Map<String, dynamic>> getProfileData() async {
    var urlProfile = "$urlAccounts/user/${identities["uid"]}/profile/"; // ?

    var r = await Requests.get(urlProfile, headers: auth_header);

    return r.json() as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getEducationData() async {
    var r = await Requests.get(urlEducation, headers: auth_header);

    return r.json() as Map<String, dynamic>;
  }
}