import 'package:Foodybite/screens/review_list_screen/widgets/review.dart';
import 'package:flutter/material.dart';

class ReviewListScreen extends StatelessWidget {
  const ReviewListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review & Ratings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
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
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Review(
            title: 'Cheesy Does It ',
            image: "assets/images/profile4.png",
            rate: '5.3',
            review:
                'Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur',
          );
        },
      ),
    );
  }
}
