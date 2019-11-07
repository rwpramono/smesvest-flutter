import 'package:flutter/material.dart';
import 'package:smesvest/UI/CustomColor.dart';
import 'package:smesvest/UI/CustomAppTheme.dart';
import 'package:smesvest/Model/HistoryTransactionData.dart';
import 'package:smesvest/UI/CustomTextStyle.dart';

class PortofolioScreen extends StatelessWidget {
  final double _valFontSize = 30;
  final FontWeight _valFontWeight = FontWeight.w700;
  final Color _fontColor = Color(0xff5b6990);

  PortofolioScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.nearlyWhite,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          renderMoney(),
          SizedBox(
            height: 15,
          ),
          for (var product in HistoryTransactionData.transactionList) ValueCard(
              product.name, product.value, product.date, product.bank
          ),
        ],
      ),
    );
  }

  Widget renderTransactionList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: HistoryTransactionData.transactionList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        var product = HistoryTransactionData.transactionList[index];
        return ValueCard(
            product.name, product.value, product.date, product.bank);
      },
    );
  }

  Widget renderMoney() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Rata - rata",
                style: Text16w500
            ),
            SizedBox(height: 10),
            Text("6.45h",
                style: TextStyle(
                  fontWeight: _valFontWeight,
                  fontSize: _valFontSize,
                  color: _fontColor,
                )
            ),
            SizedBox(height: 16),
            Text("Estimasi\nModal Kembali",
                style: Text16w500
            ),
            SizedBox(height: 10),
            Text("12 Oct",
                style: TextStyle(
                  fontWeight: _valFontWeight,
                  fontSize: _valFontSize,
                  color: _fontColor,
                )
            ),
          ],
        ),
        renderGraph()
      ],
    );
  }

  Widget renderGraph() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Color(0xfff0f5fb),
          border: Border.all(
            width: 8,
            color: Color(0xffd3e1ed),
          ),
          borderRadius: BorderRadius.circular(3)
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Minggu Ini",
            style: Text12w700
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 120,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: CustomPaint(
              foregroundPainter: GraphPainter(),
            ),
          )
        ],
      ),
    );
  }
}

class ValueCard extends StatelessWidget {
  final name;
  final value;
  final date;
  final bank;
  ValueCard(this.name,this.value,this.date, this.bank);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.6)),
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: CustomColors.violet,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,),
                )
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  date,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  bank,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 4.0,),
            Divider()
          ],
        ));
  }
}

class GraphPainter extends CustomPainter {
  //the one in the foreground
  Paint trackBarPaint = Paint()
    ..color = Color(0xff818aab)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  //the one in the background
  Paint trackPaint = Paint()
    ..color = Color(0xffdee6f1)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  @override
  void paint(Canvas canvas, Size size) {
    List val = [
      size.height * 0.8,
      size.height * 0.5,
      size.height * 0.9,
      size.height * 0.8,
      size.height * 0.5,
    ];
    double origin = 8;

    Path trackBarPath = Path();
    Path trackPath = Path();

    for (int i = 0; i < val.length; i++) {
      trackPath.moveTo(origin, size.height);
      trackPath.lineTo(origin, 0);

      trackBarPath.moveTo(origin, size.height);
      trackBarPath.lineTo(origin, val[i]);


      origin = origin + size.width * 0.22;
    }

    canvas.drawPath(trackPath, trackPaint);
    canvas.drawPath(trackBarPath, trackBarPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}