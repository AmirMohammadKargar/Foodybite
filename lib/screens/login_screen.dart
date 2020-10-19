import 'package:Foodybite/widgets/big_blue_button.dart';
import 'package:Foodybite/widgets/textinput_opacity.dart';
import 'package:Foodybite/widgets/text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _visible = true;
      });
    });
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(seconds: 3),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Login.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 50,
              child: Column(
                children: <Widget>[
                  TextInputOpacity(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    title: 'Email',
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextInputOpacity(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    title: 'Email',
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 100,
              child: Text(
                'Foodybite',
                style: TextStyle(
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
                top: 530,
                left: 270,
                child: TextSimpleButton(
                  title: 'Forget password?',
                )),
            Positioned(
              top: 600,
              left: 50,
              child: BigBlueButton(
                title: 'Login',
              ),
            ),
            Positioned(
              top: 700,
              left: 160,
              child: TextSimpleButton(
                title: 'Create New Account',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
