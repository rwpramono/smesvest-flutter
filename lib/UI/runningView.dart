import 'package:flutter/material.dart';
import 'package:smesvest/UI/CustomColor.dart';
import 'package:smesvest/UI/CustomTextStyle.dart';

class RunningView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  const RunningView({Key key, this.animationController, this.animation})
      : super(key: key);

  static List<String> setting = ["Profile", "Rekening", "Hubungi Kami", "Tentang Kami", "Logout"];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: CustomColors.nearlyWhite,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: CustomColors.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              SizedBox(height: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: setting.map( (entry) {
                                  return renderSettingItems(entry);
                                }).toList()
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget renderSettingItems(String string) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 16,
        top: 8,
        bottom: 8
      ),
      child: Text(
          string,
          textAlign: TextAlign.left,
          style: Textx18
      ),
    );
  }
}
