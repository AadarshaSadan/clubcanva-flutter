import 'package:club_canva_proj/screens/Events/view/Eventupdate.dart';
import 'package:club_canva_proj/screens/Wallet/wallet.dart';
import 'package:club_canva_proj/screens/dashboard_screen.dart';
import 'package:club_canva_proj/screens/notifications/view/notificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt selectedIndex = 0.obs;

  // List of pages
  final pages = [
    DashboardScreen(key: ValueKey('dashboard')),
    Eventupdate(key: ValueKey('events')),
    WalletScreen(key: ValueKey('wallet')),
    Notificationscreen(key: ValueKey('notification')),
  ];
  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
