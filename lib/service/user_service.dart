import 'package:http/http.dart' as http;
import '../model/User.dart';
import '/rest/api_directory.dart';
import '/rest/http.dart';

class UserService {
  static UserService instance = UserService();

  Future<List<User>> getUserDetails() async {
    try {
      Uri url = ApiDirectory.instance.getUserDetail();
      // http.Response response = await get(url: url);
      var responseBody = {
        "users": [
          {"name": "user1", "type": "admin", "description": "Domestic User"},
          {
            "name": "user2",
            "type": "customer",
            "description": "International User"
          },
          {"name": "user3", "type": "customer", "description": "Domestic User"},
          {
            "name": "user4",
            "type": "admin",
            "description": "International User"
          }
        ]
      };
      List<dynamic> users=responseBody['users']!;
      List<User> userList= users.map((user)=>User.fromJson(user)).toList();
      return userList;
    } catch (e) {
      throw e;
    }
  }
}
