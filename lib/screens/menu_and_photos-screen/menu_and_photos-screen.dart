import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuAndPhotoScreen extends StatelessWidget {
  const MenuAndPhotoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu & Photos',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/italian.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
