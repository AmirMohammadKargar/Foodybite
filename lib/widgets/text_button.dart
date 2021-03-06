import 'package:flutter/material.dart';

class TextSimpleButton extends StatelessWidget {
  const TextSimpleButton({
    Key key,
    this.title,
    this.onPress,
    this.colors,
  }) : super(key: key);
  final String title;
  final Color colors;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Text(
        '$title',
        style: TextStyle(
          fontSize: 15.0,
          color: colors,
        ),
      ),
    );
  }
}
