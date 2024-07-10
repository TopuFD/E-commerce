import 'package:full_ecommerce/screens/auth-ui/creat_account.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen1.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen2.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen3.dart';
import 'package:full_ecommerce/screens/auth-ui/resetpass_screen4.dart';
import 'package:full_ecommerce/screens/auth-ui/signin_screen.dart';
import 'package:full_ecommerce/screens/auth-ui/splash_screen.dart';
import 'package:full_ecommerce/screens/navigation_page/navigation.dart';
import 'package:full_ecommerce/screens/other_screen/activity_chatt.dart';
import 'package:full_ecommerce/screens/other_screen/notification.dart';
import 'package:full_ecommerce/screens/other_screen/request_invite.dart';
import 'package:full_ecommerce/screens/other_screen/user_profile.dart';
import 'package:get/get.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String signInScreen = "/signInScreen";
  static String navigationBarPage = "/navigationBarPage";
  static String createAccountScreen = "/createAccountScreen";
  static String resetPassScreen1 = "/resetPassScreen1";
  static String resetPassScreen2 = "/resetPassScreen2";
  static String resetPassScreen3 = "/resetPassScreen3";
  static String resetPassScreen4 = "/resetPassScreen4";
  static String notificationScreen = "/notificationScreen";
  static String activityChatt = "/activityChatt";
  static String requestInvitePage = "/requestInvitePage";
  static String userProfile = "/userProfile";
  static List<GetPage> getPage = [
    GetPage(name: AppRoute.splashScreen, page: () => const SplashScreen()),
    GetPage(name: AppRoute.signInScreen, page: () => SignInScreen()),
    GetPage(
        name: AppRoute.navigationBarPage,
        page: () => const NavigationBarPage()),
    GetPage(
        name: AppRoute.createAccountScreen,
        page: () => const CreatAccountScreen()),
    GetPage(name: AppRoute.resetPassScreen1, page: () => ResetpassScreen1()),
    GetPage(name: AppRoute.resetPassScreen2, page: () =>const ResetpassScreen2()),
    GetPage(name: AppRoute.resetPassScreen3, page: () => ResetpassScreen3()),
    GetPage(name: AppRoute.resetPassScreen4, page: () => ResetpassScreen4()),
    GetPage(name: AppRoute.notificationScreen, page: () =>const NotificationScreen()),
    GetPage(name: AppRoute.activityChatt, page: () =>ActivityChatt()),
    GetPage(name: AppRoute.requestInvitePage, page: () =>const RequestInvitePage()),
    GetPage(name: AppRoute.userProfile, page: () =>const UserProfile()),
  ];
}
