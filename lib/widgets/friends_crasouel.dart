import 'package:flutter/material.dart';

class FriendsCaresoul extends StatelessWidget {
  const FriendsCaresoul({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile1.png'),
              radius: 35.0,
            ),
          );
        },
      ),
    );
  }
}
