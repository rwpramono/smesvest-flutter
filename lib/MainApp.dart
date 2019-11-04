import 'package:flutter/material.dart';
import 'package:smesvest/Screen/HomeScreen.dart';
import 'package:smesvest/Screen/ProfileScreen.dart';
import 'package:smesvest/UI/HomeBottomNavigation.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(
    MaterialApp(
        home: MainContainer(),
        debugShowCheckedModeBanner: false
    )
);


class MainContainer extends StatefulWidget {
    @override
    _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
    int _currentIndex = 0;
    final List<Widget> _screenWidgets = [
        HomeScreen(),
        ProfileScreen(Colors.amberAccent),
        HomeScreen()
    ];

    void _changePage(int index) {
        setState(() {
            _currentIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _screenWidgets[_currentIndex],
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: BubbleBottomBar(
                    backgroundColor: Colors.transparent,
                    opacity: 1,
                    elevation: 0,
                    currentIndex: _currentIndex,
                    onTap: _changePage,
                    items: homeBottomNavigations
                ),
            ),
        );
    }

    void onTabTapped(int index) {
        setState(() {
            _currentIndex = index;
        });
    }
}