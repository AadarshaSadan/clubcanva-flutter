import 'package:club_canva_proj/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  final List<Map<String, String>> items = [
    {
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuD0FlKKW4ukpUnn1jSqVoQyRNq0XS5fvzQH6LXc_GM-mNWENdVk12Z6s20culOXY6tbEk4qrlPcbKWFE9c6ogcm1Nd1JNQmXcCVwGfsL8uFUG76VA2Vw_EJxbt3rTmuoKn1Sfs1PsQAf28L8K37zEGiXwjWYCdqQ6QRqgvM4F0Esd5I_-AE8ThSAB5YFAzvBiyPhd-L7rNw3p77v162Cu81dlxFbm0tA48gGhutDW9WpAn-l76tq7wCW8XjhdgPoYBK82xXCJeLTUI",
      "text": "Connect with Leaders",
      "text2":
          "Join a vibrant community of industry professionals and thought leaders.",
      "buttonText": "Next",
    },
    {
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuB2YUV3FAm0na2lCIJUyquhkW1L3HU9mryBPCXZQ0WRe6yAnlfX3bP_IZZ_EAcdovDjS9S9ZDQlHqqxnlZK1tfBfPcFDd7shJtDetmU1I-ub83ybF9LBbEihg6AyXkFvb_tbdncPjNtNbEa-HCz56mVlAfK4TtjPmgTOQ4R-j2UjD7_COhZGuUHyCMnzGYWsHPhhwQ1VFXErLk_6ENKHcTFw7iVwbAU1aX_nxNfGJyOfe1A0QKGR8t3OJ0IL-hZg3C03sjXo6lyKCM",
      "text": "Exclusive Events",
      "text2":
          "Gain access to members-only galas, webinars, and networking mixers.",
      "buttonText": "Next",
    },
    {
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAT4kMzPFYQOPQ426MEX5MBo20gw2niuhqiJZlvVqH5RT6JLDZjd5gdyh7t1at0w3FwbHf2ISnMSB2V35v25-ecXWPIHRMycBsf5CHx1r5qU_LVY2L77NlfF5KP-6vgmtPqfpo02CgAHXiQcHtf8CpcuXFqOpbNtlpbGwoJ9IhevZbSCDfywK2R00a2ekJeGhQMAQ_4L55QyF3zaPez-35G7xY71D00I8hVt4-CPimVttoMo7nyda1PaVTztuI3pQuvw7TyvlH91-0",
      "text": "Digital Wallet & ID",
      "text2": "Manage payments and verify your membership status instantly.",
      "buttonText": "Get Started",
    },
  ];
  //display logic
  final box = GetStorage();
  final String onboardingSeenKey = 'hasOnboardingBeenSeen';

  bool get hasOnboardingBeenSeen => box.read(onboardingSeenKey) ?? false;

  void completeOnboarding() {
    box.write(onboardingSeenKey, true); // Set the flag to true
    // Navigate to the main application screen

    Get.offAllNamed(Routes.getLoginRoute());
  }

  //next page logic

  void buttoncontrol(index, _pagecontroller) {
    if (index < items.length - 1) {
      _pagecontroller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Get.toNamed(Routes.getLoginRoute());
      // Navigate to the main app screen
    }
  }
}

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
