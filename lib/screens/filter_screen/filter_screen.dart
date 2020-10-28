import 'package:Foodybite/widgets/double_sticky_button.dart';
import 'package:flutter/material.dart';
import 'package:Foodybite/widgets/rating_star.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _currentSliderValue = 0;
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DoubleStickyButton(
        title1: 'Reset',
        title2: 'Apply',
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filter',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.clear_rounded,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Distance',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('0'),
                Text('100'),
              ],
            ),
          ),
          SizedBox(height: 35.0),
          Text(
            'Rating',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 20.0),
          RatingStar(),
        ],
      ),
    );
  }
}
