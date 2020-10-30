import 'package:Foodybite/screens/profile_screen/widgets/column_text.dart';
import 'package:Foodybite/widgets/simple_button.dart';
import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Center(
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/images/profile4.png'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Jayson Acevedo',
            style: TextStyle(
              fontSize: 23.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'jayson.acevedo@gmail.com',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: ColumnText(
                  title: 'Reviews',
                  count: '125',
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w100,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: ColumnText(
                    title: 'Followers',
                    count: '50K',
                  )),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w100,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: ColumnText(
                    title: 'Following',
                    count: '45',
                  )),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SimpleButton(
                title: 'Follow',
                color1: Colors.blue,
                color2: Colors.white,
              ),
              SizedBox(width: 20.0),
              SimpleButton(
                title: 'Block',
                color1: Colors.white,
                color2: Colors.blue,
              ),
            ],
          ),
          Divider(
            height: 35,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TrendResturantsCard(
                          rate: '🌟 4.5',
                          title: 'Happy Bones',
                          isOpen: 'OPEN',
                          category: 'Italian',
                          image: 'assets/images/Resturant1.png',
                          address: '394 Broome St, New York, NY 10013, USA',
                          distance: '12 km',
                          size: MediaQuery.of(context).size.width * 0.91,
                          onPress: () {
                            Navigator.pushNamed(
                                context, '/resturantDetailScreen');
                          }),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
