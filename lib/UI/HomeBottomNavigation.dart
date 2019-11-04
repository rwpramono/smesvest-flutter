import 'CustomTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

List<BubbleBottomBarItem> homeBottomNavigations = <BubbleBottomBarItem>[
  BubbleBottomBarItem(
    backgroundColor: Colors.black,
    icon: Icon(
      Icons.home,
      color: Colors.black,
    ),
    activeIcon: Icon(Icons.home, color: Colors.white),
    title: Text("Home", style: bottomBarItemStyle),
  ),
  BubbleBottomBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.favorite_border,
        color: Colors.black,
      ),
      activeIcon: Icon(Icons.favorite_border, color: Colors.white),
      title: Text("Portofolio", style: bottomBarItemStyle)
  ),
  BubbleBottomBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.person,
        color: Colors.black,
      ),
      activeIcon: Icon(Icons.person, color: Colors.white),
      title: Text("Profile", style: bottomBarItemStyle)
  )
];