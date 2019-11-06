import 'package:flutter/material.dart';
import 'package:smesvest/Screen/SMBDetailScreen.dart';

class FeaturedSMBCard extends StatelessWidget {
  final String imgUrl;
  final String name;

  FeaturedSMBCard({this.imgUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SMBDetailScreen(
              logoImgageUrl: imgUrl
            ),
          ),
        );
      },
      child: Container(
        height: 220.0,
        width: 135.0,
        margin: EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 3.0))
            ]),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              child: Image.network(
                imgUrl,
                width: double.infinity,
                height: 130.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
              child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0, fontFamily: "SF-Pro-Display-Bold")),
            )
          ],
        ),
      ),
    );
  }
}