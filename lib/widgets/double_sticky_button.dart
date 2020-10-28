import 'package:flutter/material.dart';

class DoubleStickyButton extends StatelessWidget {
  const DoubleStickyButton({
    Key key,
    this.title1,
    this.title2,
    this.onPress1,
    this.onPress2,
  }) : super(key: key);
  final String title1, title2;
  final Function onPress1, onPress2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onPress1();
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Text(
                '$title1',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 1.0),
        GestureDetector(
          onTap: () {
            onPress2();
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.065,
            width: MediaQuery.of(context).size.width * 0.497,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Text(
                '$title2',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
