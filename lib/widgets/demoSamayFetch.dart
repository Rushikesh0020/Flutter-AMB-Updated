import 'dart:convert';
import '../models/user.dart';
import 'package:http/http.dart' as http;
class UsersApi {
  static Future<User> getDemoSamay() async {
    final url = Uri.parse('http://10.0.2.2:8080/tgf/get/samay-sampana/1');
    final response = await http.get(url);
    final body = jsonDecode(response.body);

    return body.map<User>(User.fromJson);
  }
}

getsamay()
async {
  var url = Uri.parse('http://10.0.2.2:8080/tgf/get/samay-sampana/1');
  var response = await http.get(url);
  var samay=jsonDecode(response.body);
  return samay;
}

// Future<void> main() async {
//   var temp = await getsamay();
//   print(temp['samay404AM']);
//   print(temp['id']);
  
// }
void main()
async {
  var re=await getsamay();
  print(re);
  print(re["userId"]);

}