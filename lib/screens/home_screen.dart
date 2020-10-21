import 'package:Foodybite/widgets/row_title_carsoul.dart';
import 'package:Foodybite/widgets/search.dart';
import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            Center(
              child: Search(
                title: 'Search resturant',
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: RowTitleCraousel(
                title: 'Trending Restaurants',
                count: 15,
                onPress: () {},
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.31,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: TrendResturantsCard(
                      rate: '🌟 4.5',
                      title: 'Happy Bones',
                      isOpen: 'OPEN',
                      category: 'Italian',
                      image: 'assets/images/Resturant1.png',
                      address: '394 Broome St, New York, NY 10013, USA',
                      distance: '12 km',
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: RowTitleCraousel(
                title: 'Category',
                count: 9,
                onPress: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
