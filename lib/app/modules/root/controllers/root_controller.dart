import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:umbrella/app/routes/app_pages.dart';

class RootController extends GetxController {
  @override
  void onReady() async {
    await Firebase.initializeApp();
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser.uid);
      Get.offNamed(Routes.HOME);
    } else {
      print('no user');
      Get.offNamed(Routes.LOGIN);
    }

    super.onReady();
  }
}
