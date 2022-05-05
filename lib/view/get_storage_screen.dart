import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/constant.dart';
import 'package:get_x_demo/view/new_user.dart';

class GetStorageScreen extends StatefulWidget {
  const GetStorageScreen({Key? key}) : super(key: key);

  @override
  State<GetStorageScreen> createState() => _GetStorageScreenState();
}

class _GetStorageScreenState extends State<GetStorageScreen> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: "Email",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  box
                      .write("email", email.text)
                      .then((value) => Get.to(() => NewUser()));
                },
                child: Text("Save Email"))
          ],
        ),
      ),
    );
  }
}
