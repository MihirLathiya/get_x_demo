import 'package:get_x_demo/api_route/api_rout.dart';
import 'package:get_x_demo/model/new_user_model.dart';
import 'package:http/http.dart' as http;

class NewUserService {
  static Future newUser() async {
    http.Response response = await http.get(Uri.parse(ApiRoute.userUrl));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return newUserModelFromJson(jsonString);
    }
  }
}
