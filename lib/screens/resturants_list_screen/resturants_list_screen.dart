import 'package:Foodybite/widgets/custom_appbar.dart';
import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class ResturantListScreen extends StatelessWidget {
  const ResturantListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(
            image: 'assets/images/italian.png',
            color1: Colors.pink,
            color2: Colors.yellow,
            title: 'Italian',
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
