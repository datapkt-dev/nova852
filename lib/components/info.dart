import 'package:flutter/material.dart';

class InfoBoard extends StatelessWidget {
  String title, subtitle;
  int bcolor;
  bool large;
  InfoBoard({super.key, required this.title, required this.subtitle, required this.bcolor, required this.large});

  @override
  Widget build(BuildContext context) {
    if (large) {
      return Container(
        width: 174,
        height: 160,
        decoration: ShapeDecoration(
          color: Color(bcolor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Container(
          width: 132,
          height: 37,
          margin: EdgeInsets.only(top: 21, left: 11),
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
                  height: 0.08,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: 174,
        height: 77,
        decoration: ShapeDecoration(
          color: Color(bcolor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Container(
          width: 132,
          height: 37,
          margin: EdgeInsets.only(top: 21, left: 11),
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
                  height: 0.08,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
