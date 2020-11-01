import 'package:Foodybite/models/category.dart';
import 'package:Foodybite/widgets/custom_appbar.dart';
import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class ResturantListScreen extends StatefulWidget {
  const ResturantListScreen({Key key, this.category}) : super(key: key);
  final Category category;
  @override
  _ResturantListScreenState createState() => _ResturantListScreenState();
}

class _ResturantListScreenState extends State<ResturantListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(
            image: widget.category.imageUrl,
            color1: widget.category.color1,
            color2: widget.category.color2,
            title: widget.category.name,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
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
                        Navigator.pushNamed(context, '/resturantDetailScreen');
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
