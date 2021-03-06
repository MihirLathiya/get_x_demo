import 'package:get_x_demo/api_route/api_rout.dart';
import 'package:get_x_demo/model/user_model.dart';
import 'package:http/http.dart' as http;

class AllUserData {
  static Future<UserList?> allUserData() async {
    http.Response response = await http.get(Uri.parse(ApiRoute.allUser));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return userListFromJson(jsonString);
    }
  }
}
