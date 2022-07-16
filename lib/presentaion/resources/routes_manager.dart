import 'package:demo/presentaion/forget_password/forget_password_view.dart';
import 'package:demo/presentaion/login/login_view.dart';
import 'package:demo/presentaion/main/main_view.dart';
import 'package:demo/presentaion/register/register_view.dart';
import 'package:demo/presentaion/splash/splash_view.dart';
import 'package:demo/presentaion/store_details/store_details_view.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case RoutesManager.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RoutesManager.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());

      case RoutesManager.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());

      case RoutesManager.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());

      case RoutesManager.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title:const Text("No Route Found"),
        ),
        body: const Center(child: Text("No Route Found")),
      ),
    );
  }
}
