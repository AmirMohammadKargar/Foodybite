import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class TrendingResturantCarousel extends StatelessWidget {
  const TrendingResturantCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPress: () {
                  Navigator.pushNamed(context, '/resturantDetailScreen');
                }),
          );
        },
      ),
    );
  }
}
