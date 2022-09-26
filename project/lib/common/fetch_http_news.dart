import 'package:http/http.dart' as http;
import 'package:html/parser.dart';


fetch(){
  var url =
  Uri.https('www.habr.com', '/ru/rss/flows/develop/', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  return http.get(url);
  /*if (response.statusCode == 200) {
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }*/
}