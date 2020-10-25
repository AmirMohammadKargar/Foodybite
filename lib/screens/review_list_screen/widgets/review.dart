import 'package:Foodybite/widgets/small_text_box.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({
    Key key,
    this.title,
    this.review,
    this.image,
    this.rate,
  }) : super(key: key);
  final String title, review, image, rate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(image),
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                    letterSpacing: -0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '$review',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                )
              ],
            ),
          ),
          SmallTextBox(
            title: '🌟 $rate',
            color: Colors.black,
            color2: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
