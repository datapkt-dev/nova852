import 'package:flutter/material.dart';

class InfoBoard extends StatelessWidget {
  String title, subtitle;
  int bcolor;
  bool large;
  InfoBoard({super.key, required this.title, required this.subtitle, required this.bcolor, required this.large});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    if (large) {
      return Container(
        width: 174 * wScale,
        height: 160 * hScale,
        decoration: ShapeDecoration(
          color: Color(bcolor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Container(
          width: 132 * wScale,
          height: 37 * hScale,
          margin: EdgeInsets.only(top: 21 * hScale, left: 11 * wScale),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
              //SizedBox(height: 10 * hScale,),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: 174 * wScale,
        height: 77 * hScale,
        decoration: ShapeDecoration(
          color: Color(bcolor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Container(
          width: 132 * wScale,
          height: 37 * hScale,
          margin: EdgeInsets.only(top: 21 * hScale, left: 11 * wScale),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
              //SizedBox(height: 10 * hScale,),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
