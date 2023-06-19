part of 'app_pages.dart';

abstract class AppRoutes {
  static const splash = _Routes.splash;
  static const initial = _Routes.initial;
  static const login = _Routes.login;
  static const signup = _Routes.signup;
}

abstract class _Routes {
  static const String initial = '/';
  static const String splash = '/splash_page';

  static const String login = '/login_page';
  static const String signup = '/signup_page';
}
