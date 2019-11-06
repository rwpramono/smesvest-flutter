import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smesvest/Screen/BrowseSMBScreen.dart';
import 'package:smesvest/UI/CustomIcon.dart';
import 'package:smesvest/Model/FeaturedSMB.dart';
import 'package:smesvest/UI/CustomTextStyle.dart';
import 'package:smesvest/Widgets/FeaturedSMBCard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  Widget renderHeadder() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("SMESVEST", style: headingStyle),
          IconButton(
            icon: Icon(CustomIcons.cart),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget renderHomeProduct() {
    return Container(
      height: 220,
      child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var product = products[index];
          return FeaturedSMBCard(
              imgUrl: product.image,
              name: product.title);
        },
      ),
    );
  }

  Widget renderSearchBox() {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.12),
                offset: Offset(0, 10),
                blurRadius: 30)
          ]),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 12),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search...",
                hintStyle: searchBarStyle,
                suffixIcon: Icon(CustomIcons.search)),
          ),
        ),
      ),
    );
  }

  Widget renderBigBanner() {
    return Container(
      width: double.infinity,
      height: 160,
      margin: EdgeInsets.symmetric(horizontal: 22),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("Berita UMKM", style: speakerTitleStyle),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 6),
                          blurRadius: 6)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 22, top: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Rålis", style: productTitleStyle),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Haute Red, Slate Blue,\nMist Grey",
                          style: speakerdescStyle)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: -5,
            child: Image.asset("assets/images/speaker.png",
                fit: BoxFit.cover, width: 150, height: 160),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderHeadder(),
          SizedBox(
            height: 22,
          ),
          renderSearchBox(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Featured", style: headingStyle),
                FlatButton(
                  child: Text("Lihat Semua", style: searchBarStyle,),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrowseSMBScreen(),
                      ),
                    );                  },
                )
              ]
            )
          ),
          renderHomeProduct(),
          SizedBox(
            height: 12,
          ),
          renderBigBanner()
        ],
      ),
    );
  }
}