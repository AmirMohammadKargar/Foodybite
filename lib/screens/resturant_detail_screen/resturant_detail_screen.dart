import 'dart:ui';
import 'package:Foodybite/screens/resturant_detail_screen/widgets/head_image.dart';
import 'package:Foodybite/screens/resturant_detail_screen/widgets/icon_box.dart';
import 'package:Foodybite/screens/resturant_detail_screen/widgets/menu_and_photo_crasouel.dart';
import 'package:Foodybite/screens/resturant_detail_screen/widgets/open_time_text.dart';
import 'package:Foodybite/screens/resturant_detail_screen/widgets/review_list.dart';
import 'package:Foodybite/widgets/row_title_carsoul.dart';
import 'package:Foodybite/widgets/small_tag.dart';
import 'package:Foodybite/widgets/small_text_box.dart';
import 'package:Foodybite/widgets/sticky_button.dart';
import 'package:flutter/material.dart';

class ResturantDetailScreen extends StatelessWidget {
  const ResturantDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StickyButton(
        title: 'Rate Your Experience',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                HeadImage(
                  image: 'assets/images/Resturant1.png',
                ),
                Positioned(
                  left: 15.0,
                  top: 35.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  right: 15.0,
                  top: 35.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.share_outlined,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.bookmark_border_outlined,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 310,
                  left: 20,
                  child: IconBox(
                    phoneNumber: '+1 212-673-3754',
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Happy Bones',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SmallTag(
                          title: 'Italian',
                          color: Colors.pink,
                        ),
                      ),
                      SmallTag(
                        title: '12 km',
                        color: Colors.purpleAccent,
                      ),
                    ],
                  ),
                  SmallTextBox(
                    title: '🌟 4.5',
                    color: Colors.grey[600],
                    color2: Colors.grey[300],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '394 Broome St, New York, NY 10013, USA',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: OpenTimeText(
                isOpen: 'Open Now',
                dailyTime: '9:30 am to 11:00 pm',
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: RowTitleCraousel(title: 'Menu & Photos', count: 32),
            ),
            MenuAndPhototsCrasouel(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: RowTitleCraousel(title: 'Review & Ratings', count: 32),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [ReviewList()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
