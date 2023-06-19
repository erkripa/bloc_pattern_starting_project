import 'package:flutter/material.dart';
import 'app_pages.dart';

abstract class RouteManagement {
  static void goToSplashPage(BuildContext context) =>
      Navigator.pushNamedAndRemoveUntil(
          context, AppRoutes.splash, (_) => false);

  static void goToRegisterPage(BuildContext context) =>
      Navigator.pushNamed(context, AppRoutes.signup);
}
