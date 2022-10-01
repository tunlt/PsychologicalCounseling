import 'package:astrology/resourse/consultant/Profile/editprofile_screen.dart';
import 'package:astrology/resourse/consultant/Profile/profile_screen.dart';
import 'package:astrology/resourse/consultant/Schedule/schedule_screen.dart';
import 'package:astrology/resourse/consultant/callconsultant/call_screen.dart';
import 'package:astrology/resourse/consultant/callconsultant/components/bodyCall.dart';
import 'package:astrology/resourse/consultant/controller/consultant.dart';
import 'package:astrology/resourse/consultant/controller/register_consultant.dart';
import 'package:astrology/resourse/consultant/controller/verifyemail.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => VerifyEmailController());
    Get.lazyPut(() => ProfileConsultantScreen());
    Get.lazyPut(() => EditProfileConsultantScreen());
    Get.lazyPut(() => CallScreen());
    Get.lazyPut(() => BodyCall());
    Get.lazyPut(() => ConsultantController());
    Get.lazyPut(() => ScheduleScreen());
  }
}
