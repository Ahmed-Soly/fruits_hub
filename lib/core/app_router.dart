import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth_features/presentation/views/login_view.dart';


import '../features/auth_features/presentation/views/register_view.dart';
import '../features/home_features/presentation/view/home_view.dart';
import '../features/on_boarding_features/presentation/views/onBoardingView.dart';
import '../features/splash/view/splash_view.dart';

class AppRoutes{

  static const splashView='splash';
  static const onBoardView='onBoard';
  static const loginView='login';
  static const registerView='register';
  static const homeView='home';

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    switch(settings.name)
    {
      case 'splash':
        return MaterialPageRoute(builder: (context)=>const SplashView());
      case 'onBoard':
         return MaterialPageRoute(builder: (context)=>const OnBoardingView());
      case 'login':
        return MaterialPageRoute(builder: (context)=>const LoginView());
      case 'register':
         return MaterialPageRoute(builder: (context)=>const RegisterView());
       case 'home':
         return MaterialPageRoute(builder: (context)=>const HomeView());
      default:
        return MaterialPageRoute(builder: (context)=>const SplashView());
    }

  }

}