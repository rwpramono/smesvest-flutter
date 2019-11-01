import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'customIcons.dart';
import 'style.dart';

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
        CustomIcons.products,
        color: Colors.black,
      ),
      activeIcon: Icon(CustomIcons.products, color: Colors.white),
      title: Text("Shop", style: bottomBarItemStyle)),
  BubbleBottomBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.favorite_border,
        color: Colors.black,
      ),
      activeIcon: Icon(Icons.favorite_border, color: Colors.white),
      title: Text("Favorite", style: bottomBarItemStyle)),
  BubbleBottomBarItem(
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.person,
        color: Colors.black,
      ),
      activeIcon: Icon(Icons.person, color: Colors.white),
      title: Text("Profile", style: bottomBarItemStyle))
];