import 'package:Foodybite/widgets/search.dart';
import 'package:Foodybite/widgets/trend_resturants_card.dart';
import 'package:flutter/material.dart';

class TrendResturantScreen extends StatelessWidget {
  const TrendResturantScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trending Resturant',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Search(
              title: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
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
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
