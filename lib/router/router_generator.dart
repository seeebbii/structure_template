import 'package:flutter/material.dart';
import 'package:revision/views/Authentication/auth_decider.dart';
import 'package:revision/views/Authentication/landing.dart';
import 'package:revision/views/Authentication/login.dart';
import 'package:revision/views/Authentication/signup.dart';
import 'package:revision/views/Home/dashboard.dart';
import 'package:revision/views/Splash/splash_screen.dart';

// STATIC ROUTE NAMES

const String initialRoute = "/";
const String authDecider = "/auth-decider";
const String landing = "/landing";
const String login = "/login";
const String signUp = "/signUp";
const String dashboard = "/dashboard";

// TODO : ROUTES GENERATOR CLASS THAT CONTROLS THE FLOW OF NAVIGATION/ROUTING
class RouteGenerator{


  static Route<dynamic> onGeneratedRoutes(RouteSettings settings){

    late dynamic args;
    if(settings.arguments != null){
      args = settings.arguments as Map;
    }

    switch(settings.name){
      case initialRoute:
        return _getPageRoute( const SplashScreen());

      case authDecider:
        return _getPageRoute( const AuthDecider());

      case landing:
        return _getPageRoute( const Landing());

      case login:
        return _getPageRoute( const Login());

      case signUp:
        return _getPageRoute( const SignUp());

      case dashboard:
        return _getPageRoute( const Dashboard());

      default:
        return _errorRoute();
    }

  }


  // FUNCTION THAT HANDLES NAVIGATION
  static PageRoute _getPageRoute(Widget child) {

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
    return MaterialPageRoute(builder: (ctx) => child);
  }


  // 404 PAGE
  static PageRoute _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('ERROR 404: Not Found'),
        ),
      );
    });
  }

}