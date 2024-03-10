import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedItems extends StatelessWidget {
  int price, area, rooms;
  String img, caption;
  FeaturedItems({super.key, required this.img, required this.price, required this.area, required this.rooms, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 168,
              height: 128,
              child: Image.asset(img),
            ),
            Container(
              width: 52,
              height: 20,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 4,),
                  SvgPicture.asset('assets/icons/diamond.svg'),
                  SizedBox(width: 2,),
                  Text(
                    '鑽石',
                    style: TextStyle(
                      color: Color(0xFFF0C790),
                      fontSize: 12,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 6,),
        const SizedBox(
          width:168,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '900',
                    style: TextStyle(
                      color: Color(0xFFF12323),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                      letterSpacing: 0.40,
                    ),
                  ),
                  Text(
                    '萬',
                    style: TextStyle(
                      color: Color(0xFFF12323),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '實36坪',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 13,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  Text(
                    '2房',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 13,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 6,),
        const SizedBox(
            width: 168,
            height: 45,
            child: Text(
              '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 15,
                fontFamily: 'PingFang TC',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.75,
              ),
            )
        ),
      ],
    );
  }
}
