import 'package:flutter/material.dart';
import 'package:smesvest/Screen/HomeScreen.dart';
import 'package:smesvest/Screen/ProfileScreen.dart';
import 'package:smesvest/Screen/PortofolioScreen.dart';
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

    PageController pageController = PageController(
        initialPage: 0,
        keepPage: true,
    );

    Widget buildPageView() {
        return PageView(
            controller: pageController,
            onPageChanged: (index) {
                _changePage(index);
            },
            children: <Widget>[
                HomeScreen(),
                PortofolioScreen(),
                ProfileScreen(Colors.amberAccent)
            ],
        );
    }

    void _changePage(int index) {
        setState(() {
            _currentIndex = index;
        });
    }

    void bottomNavTapped(int index) {
        setState(() {
            _currentIndex = index;
            pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease
            );
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: buildPageView(),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: BubbleBottomBar(
                    backgroundColor: Colors.transparent,
                    opacity: 1,
                    elevation: 0,
                    currentIndex: _currentIndex,
                    onTap: bottomNavTapped,
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