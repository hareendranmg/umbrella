import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:get/get.dart';
import 'package:umbrella/app/services/auth_services.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: Get.height * 0.05,
          child: SignInButton(
            Buttons.Google,
            onPressed: () {
              AuthServices().signInWithGoogle().then((value) => print(value));
            },
          ),
        ),
      ),
    );
  }
}
