import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 1) {
        Navigator.pushNamed(context, '/savedScreen');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: .2,
      currentIndex: _currentIndex,
      onTap: changeIndex,
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      elevation: 8,
      fabLocation: BubbleBottomBarFabLocation.end, //new
      hasNotch: true, //new
      hasInk: true, //new, gives a cute ink effect
      items: <BubbleBottomBarItem>[
        BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.dashboard_outlined,
              color: Colors.blue,
            ),
            activeIcon: Icon(
              Icons.dashboard_outlined,
              color: Colors.blue,
            ),
            title: Text("Home")),
        BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.blue,
            ),
            activeIcon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.deepPurple,
            ),
            title: Text("Saved")),
        BubbleBottomBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.blue,
            ),
            activeIcon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.indigo,
            ),
            title: Text("Notifiaction")),
        BubbleBottomBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.supervised_user_circle_outlined,
              color: Colors.blue,
            ),
            activeIcon: Icon(
              Icons.supervised_user_circle_outlined,
              color: Colors.green,
            ),
            title: Text("User"))
      ],
    );
  }
}
