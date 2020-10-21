import 'package:Foodybite/widgets/text_button.dart';
import 'package:flutter/material.dart';

class RowTitleCraousel extends StatelessWidget {
  const RowTitleCraousel({
    Key key,
    this.title,
    this.count,
    this.onPress,
  }) : super(key: key);
  final String title;
  final int count;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        TextSimpleButton(
          title: 'See all($count)',
          colors: Colors.blue,
          onPress: onPress(),
        ),
      ],
    );
  }
}
