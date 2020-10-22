import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({
    Key key,
    this.image,
    this.title,
    this.color1,
    this.color2,
  }) : super(key: key);
  final String image, title;
  final Color color1, color2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.28,
          height: MediaQuery.of(context).size.width * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  colors: [
                    color1,
                    color2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 28.0,
          top: 48.0,
          child: Text(
            '$title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
