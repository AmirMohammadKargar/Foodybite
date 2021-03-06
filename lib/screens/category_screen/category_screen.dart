import 'package:Foodybite/models/category.dart';
import 'package:Foodybite/screens/category_screen/widgets/category_list.dart';
import 'package:Foodybite/screens/resturants_list_screen/resturants_list_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index) {
            Category cate = category[index];
            return CategoryList(
              title: cate.name,
              color1: cate.color1,
              color2: cate.color2,
              image: cate.imageUrl,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResturantListScreen(
                      category: cate,
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
