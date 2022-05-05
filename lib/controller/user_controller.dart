import 'package:get/get.dart';
import 'package:get_x_demo/api_serices/user_service.dart';
import 'package:get_x_demo/model/user_model.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  UserList? usersList;

  @override
  void onInit() {
    fetchUserDetail();
    super.onInit();
  }

  void fetchUserDetail() async {
    isLoading(true);
    try {
      final users = await AllUserData.allUserData();
      usersList = users;
    } finally {
      isLoading(false);
    }
  }
}
