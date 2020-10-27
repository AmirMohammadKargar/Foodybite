import 'package:flutter/material.dart';

class TitleWithBackground extends StatelessWidget {
  const TitleWithBackground({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          '$title',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
