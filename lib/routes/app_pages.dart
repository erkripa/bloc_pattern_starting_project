import 'package:first_bloc/modules/register/bloc/register_bloc.dart';
import 'package:first_bloc/modules/register/pages/register_page.dart';
import 'package:first_bloc/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../splash/splash_page.dart';
part 'app_routes.dart';

typedef NewPageBuilder = Widget Function();

abstract class AppPages {
  static final List<PageEntity> _pages = [
    PageEntity(
      routName: AppRoutes.splash,
      page: SplashPage.new,
    ),
    PageEntity(
      routName: AppRoutes.signup,
      page: RegisterPage.new,
      bloc: BlocProvider(create: (context) => RegisterBloc()),
    ),
  ];

  static List<dynamic> allBlocsProvider() {
    List<dynamic> blocProviders = <dynamic>[];
    for (PageEntity bloc in _pages) {
      if (bloc.bloc != null) {
        blocProviders.add(bloc.bloc);
      }
    }
    return blocProviders;
  }

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final Iterable<PageEntity> result = _pages
        .where((PageEntity pageEntity) => pageEntity.routName == settings.name);

    if (result.isNotEmpty) {
      return MaterialPageRoute(builder: (_) => result.first.page.call());
    }
    return MaterialPageRoute(builder: (_) => const HomeView());
  }
}

class PageEntity {
  final String routName;
  final dynamic bloc;
  final NewPageBuilder page;
  PageEntity({
    required this.routName,
    required this.page,
    this.bloc,
  });
}
