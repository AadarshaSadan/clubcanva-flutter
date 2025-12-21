import 'package:club_canva_proj/colors.dart';
import 'package:club_canva_proj/screens/Events/view/Eventupdate.dart';
import 'package:club_canva_proj/screens/Wallet/wallet.dart';
import 'package:club_canva_proj/screens/bottom_navigationbar/controller/bottomnavigation.dart';
import 'package:club_canva_proj/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../onboarding_screen/view/onboarding_screen.dart';

class BottomNavscreen extends StatelessWidget {
  BottomNavscreen({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.page_color),
      extendBody: true,
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          height: 80,

          padding: const EdgeInsets.only(bottom: 25.0, right: 18, left: 20),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(70)),
            child: NavigationBarTheme(
              data: const NavigationBarThemeData(
                labelTextStyle: WidgetStatePropertyAll(
                  TextStyle(fontSize: 0), // hide labels properly
                ),
              ),
              child: NavigationBar(
                backgroundColor: Colors.brown,

                destinations: [
                  NavigationDestination(icon: Icon(Icons.home), label: ''),
                  NavigationDestination(
                    icon: Icon(Icons.calendar_month),
                    label: '',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.account_balance_wallet),
                    label: '',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.notifications),
                    label: '',
                  ),
                ],
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: controller.changeTab,
              ),
            ),
          ),
        ),

        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.calendar_month),
        //     label: 'Events',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.account_balance_wallet),
        //     label: 'Wallet',
        //   ),
      ),
    );
  }
}
