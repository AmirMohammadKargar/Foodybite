import 'package:Foodybite/screens/review_and_rating_screen/widgets/rating_star.dart';
import 'package:Foodybite/widgets/big_text_inpurt.dart';
import 'package:Foodybite/widgets/sticky_button.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StickyButton(title: "Done"),
      appBar: AppBar(
        title: Text(
          'Review & Ratings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.fullscreen_exit,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.0),
            RatingStar(),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Rate your experience',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            BigTextInput(
              title: 'Write your experience',
            ),
          ],
        ),
      ),
    );
  }
}
