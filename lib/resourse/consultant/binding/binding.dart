import 'package:astrology/resourse/consultant/Profile/profile_screen.dart';
import 'package:astrology/resourse/consultant/controller/register_consultant.dart';
import 'package:astrology/resourse/consultant/controller/verifyemail.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => VerifyEmailController());
    Get.lazyPut(() => ProfileConsultantScreen());
  }
}
