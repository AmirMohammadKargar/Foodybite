import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          color: Colors.blue[50], borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: RatingBar(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          unratedColor: Colors.grey[300],
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ),
    );
  }
}
