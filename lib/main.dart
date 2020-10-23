import 'package:Foodybite/screens/forget_password_screen.dart';
import 'package:Foodybite/screens/home_screen.dart';
import 'package:Foodybite/screens/intro_screen.dart';
import 'package:Foodybite/screens/login_screen.dart';
import 'package:Foodybite/screens/register_screen.dart';
import 'package:Foodybite/screens/trend_resturant.dart';
import 'package:Foodybite/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodybite',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/second': (context) => LoginScreen(),
        '/forgetScreen': (context) => ForgetScreen(),
        '/registerScreen': (context) => RegisterScreen(),
        '/introScreen': (context) => IntroScreen(),
        '/homeScreen': (context) => HomeScreen(),
        '/trendResturantScreen': (context) => TrendResturantScreen(),
      },
    );
  }
}
