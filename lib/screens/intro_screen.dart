import 'package:Foodybite/widgets/big_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: KeyboardAvoider(
        autoScroll: true,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/WelcomePage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              color: Colors.white24,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 300),
                      Text(
                        'Hi John,\nWelcome to',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                        ),
                      ),
                      Text(
                        'Foodybite',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 45.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Please turn on your GPS to find out\nbetter restaurant suggestions near you.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 100),
                  Center(
                    child: BigBlueButton(title: 'Turn On GPS'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
