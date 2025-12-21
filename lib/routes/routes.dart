import 'package:club_canva_proj/screens/bottom_navigationbar/view/bottom_navscreen.dart';
import 'package:club_canva_proj/screens/bouncing_icon.dart';
import 'package:club_canva_proj/screens/dashboard_screen.dart';
import 'package:club_canva_proj/screens/login_screen/login_screen.dart';
import 'package:club_canva_proj/screens/onboarding_screen/controller/onboarding.controller.dart';
import 'package:club_canva_proj/screens/onboarding_screen/view/onboarding_screen.dart';
import 'package:club_canva_proj/screens/splashscreen/view/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static String getOnboardingRoute() => onboarding;
  static String getLoginRoute() => login;
  static String getDashboardRoute() => dashboard;
  static String getSplashScreenRoute() => '/splash';
  static String getBottomnavRoute() => '/bottomnav';
  static List<GetPage> routes = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: dashboard, page: () => DashboardScreen()),
    GetPage(name: getSplashScreenRoute(), page: () => const SplashScreen()),
    GetPage(name: getBottomnavRoute(), page: () => BottomNavscreen()),
  ];
}
