import 'package:club_canva_proj/routes/routes.dart';
import 'package:club_canva_proj/screens/onboarding_screen/controller/onboarding.controller.dart';
import 'package:club_canva_proj/widgets/reusable_textwidget.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

final controller = Get.put(OnboardingController());

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pagecontroller = PageController();
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF181412),
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pagecontroller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return onboarding_screen(
            height: height,
            pagecontroller: _pagecontroller,
            index: index,
            items: controller.items,
          );
        },
      ),
    );
  }
}

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({
    super.key,
    required this.height,
    required PageController pagecontroller,
    required this.index,
    required this.items,
  }) : _pagecontroller = pagecontroller;

  final double height;
  final PageController _pagecontroller;
  final int index;
  final List<Map<String, String>> items;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔹 Background image (FULL SCREEN)
        Image.network(
          items[index]['image']!,
          opacity: const AlwaysStoppedAnimation(0.45),
        ),

        // 🔹 Bottom container
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: height * 0.5,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: const BoxDecoration(
              color: Color(0xFF181411),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // 👈 important
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmoothPageIndicator(
                    controller: _pagecontroller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotWidth: 9,
                      dotHeight: 7,
                      activeDotColor: Color(0xFFED862D),
                      dotColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    items[index]['text']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text_widget(
                    text: items[index]['text2']!,
                    fontWeight: FontWeight.w500,
                    fontsize: 15,
                    color: Color(0xFF9CA3AF),
                    textalign: TextAlign.left,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.getLoginRoute());
                          controller.completeOnboarding();
                        },
                        child: Text_widget(
                          text: 'Skip',
                          fontWeight: FontWeight.w500,
                          fontsize: 15,
                          color: Color(0xFF9CA3AF),
                          textalign: TextAlign.left,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 27,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFED862D),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.buttoncontrol(
                                  index,
                                  _pagecontroller,
                                );
                                controller.completeOnboarding();
                              },
                              child: Text(
                                items[index]['buttonText']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
