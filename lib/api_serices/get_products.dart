import 'package:get_x_demo/api_route/api_rout.dart';
import 'package:get_x_demo/model/product_model.dart';
import 'package:http/http.dart' as http;

class GetProducts {
  static Future<List<Product>?> getProducts() async {
    http.Response response = await http.get(
      Uri.parse(ApiRoute.productLink),
    );

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
