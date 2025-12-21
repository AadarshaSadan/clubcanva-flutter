import 'package:club_canva_proj/routes/routes.dart';
import 'package:club_canva_proj/screens/bottom_navigationbar/view/bottom_navscreen.dart';
import 'package:club_canva_proj/screens/onboarding_screen/view/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: Routes.getSplashScreenRoute(),

      home: BottomNavscreen(),
      getPages: [...Routes.routes],
    );
  }
}
