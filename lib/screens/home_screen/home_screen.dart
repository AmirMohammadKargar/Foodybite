import 'package:Foodybite/widgets/bottom_navigation.dart';
import 'package:Foodybite/widgets/category_crasouel.dart';
import 'package:Foodybite/widgets/friends_crasouel.dart';
import 'package:Foodybite/widgets/row_title_carsoul.dart';
import 'package:Foodybite/widgets/search.dart';
import 'package:Foodybite/widgets/trending_resturant_crasouel.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: Colors.grey[100],
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
                onPress: () {
                  Navigator.pushNamed(context, '/trendResturantScreen');
                },
              ),
            ),
            SizedBox(height: 20),
            TrendingResturantCarousel(),
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
            CategoryCarousel(),
            SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: RowTitleCraousel(
                title: 'Friends',
                count: 9,
                onPress: () {},
              ),
            ),
            FriendsCaresoul(),
          ],
        ),
      ),
    );
  }
}
