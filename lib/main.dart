import 'package:Foodybite/screens/filter_screen/filter_screen.dart';
import 'package:Foodybite/screens/find_friends_screen/find_friends_screen.dart';
import 'package:Foodybite/screens/forget_password_screen/forget_password_screen.dart';
import 'package:Foodybite/screens/home_screen/home_screen.dart';
import 'package:Foodybite/screens/intro_screen/intro_screen.dart';
import 'package:Foodybite/screens/login_screen/login_screen.dart';
import 'package:Foodybite/screens/menu_and_photos-screen/menu_and_photos-screen.dart';
import 'package:Foodybite/screens/register_screen/register_screen.dart';
import 'package:Foodybite/screens/resturant_detail_screen/resturant_detail_screen.dart';
import 'package:Foodybite/screens/review_and_rating_screen/review_and_rating_screen.dart';
import 'package:Foodybite/screens/review_list_screen/review_list_screen.dart';
import 'package:Foodybite/screens/trend_resturant_screen/trend_resturant_screen.dart';
import 'package:Foodybite/screens/welcome_screen/welcome_screen.dart';
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
        '/resturantDetailScreen': (context) => ResturantDetailScreen(),
        '/reviewScreen': (context) => ReviewScreen(),
        '/reviewListScreen': (context) => ReviewListScreen(),
        '/menuAndPhotoScreen': (context) => MenuAndPhotoScreen(),
        '/findFriendScreen': (context) => FindFriendScreen(),
        '/filterScreen': (context) => FilterScreen(),
      },
    );
  }
}
