import 'package:Foodybite/screens/find_friends_screen/widgets/follow_list.dart';
import 'package:Foodybite/widgets/title_with_background.dart';
import 'package:flutter/material.dart';

class FindFriendScreen extends StatelessWidget {
  const FindFriendScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Friends',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            TitleWithBackground(
              title: 'Contacts',
              color: Colors.grey[200],
            ),
            FollowList(
              name: 'Alexandra Mclean',
              image: 'assets/images/profile8.png',
              review: 50,
            ),
            TitleWithBackground(
              title: 'Suggetions',
              color: Colors.grey[200],
            ),
            FollowList(
              name: 'Alexandra Mclean',
              image: 'assets/images/profile3.png',
              review: 50,
            ),
          ],
        ),
      ),
    );
  }
}
