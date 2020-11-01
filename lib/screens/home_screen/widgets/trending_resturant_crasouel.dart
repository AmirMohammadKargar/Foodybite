import 'package:Foodybite/models/resturants.dart';
import 'package:Foodybite/screens/resturant_detail_screen/resturant_detail_screen.dart';
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
        itemCount: resturants.length,
        itemBuilder: (BuildContext context, int index) {
          Resturants resturant = resturants[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            child: TrendResturantsCard(
                rate: '🌟' + resturant.rate,
                title: resturant.name,
                isOpen: resturant.isOpen,
                category: resturant.type,
                image: resturant.imageUrl,
                address: resturant.address,
                distance: resturant.distance + ' km',
                size: MediaQuery.of(context).size.width * 0.8,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ResturantDetailScreen(
                        resturants: resturant,
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
