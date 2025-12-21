import 'package:club_canva_proj/routes/routes.dart';
import 'package:club_canva_proj/screens/onboarding_screen/controller/onboarding.controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart'
    show GetxController;
import 'package:get_storage/get_storage.dart';

class Splashscreencontroller extends GetxController {
  final box = GetStorage();
  final OnboardingController onboardingController = Get.put(
    OnboardingController(),
  );

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen
      // Replace '/nextscreen' with your actual route name

      if (onboardingController.hasOnboardingBeenSeen) {
        Get.offAllNamed(Routes.getLoginRoute());
      } else {
        Get.offAllNamed(Routes.getOnboardingRoute());
      }
    });
    // Add any initialization logic here if needed
  }
}
