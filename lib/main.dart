import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x_demo/view/get_storage_screen.dart';
import 'package:get_x_demo/view/mack_up_item.dart';
import 'package:get_x_demo/view/new_user.dart';
import 'package:get_x_demo/view/pokemon_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PokemonHomePage(),
    );
  }
}
