import 'package:get/get.dart';
import 'package:get_x_demo/api_serices/new_user_service.dart';
import 'package:get_x_demo/model/new_user_model.dart';

class NewUserController extends GetxController {
  var isLoading = true.obs;
  NewUserModel? userData;

  @override
  void onInit() {
    fetchNewUser();
    super.onInit();
  }

  void fetchNewUser() async {
    isLoading(true);
    try {
      final userInfo = await NewUserService.newUser();
      userData = userInfo;
    } finally {
      isLoading(false);
    }
  }
}
