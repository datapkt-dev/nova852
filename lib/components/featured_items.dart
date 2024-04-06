import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedItems extends StatelessWidget {
  final int price, area, rooms;
  final String img, caption;
  const FeaturedItems({super.key, required this.img, required this.price, required this.area, required this.rooms, required this.caption});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 168 * wScale,
              height: 128 * hScale,
              child: Image.asset(img),
            ),
            Positioned(
              top: 8 * hScale,
              child: Container(
                width: 52 * wScale,
                height: 20 * hScale,
                decoration: const ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 4 * wScale,),
                    SvgPicture.asset('assets/icons/diamond.svg'),
                    SizedBox(width: 2 * wScale,),
                    const Text(
                      '鑽石',
                      style: TextStyle(
                        color: Color(0xFFF0C790),
                        fontSize: 12,
                        fontFamily: 'PingFang TC',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        //SizedBox(height: 3 * hScale,),
        SizedBox(
          width: 168 * wScale,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '$price',
                    style: const TextStyle(
                      color: Color(0xFFF12323),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    '萬',
                    style: TextStyle(
                      color: Color(0xFFF12323),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '實$area坪',
                    style: const TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 13,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '$rooms房',
                    style: const TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 13,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        //SizedBox(height: 6 * hScale,),
        SizedBox(
            width: 168 * wScale,
            height: 45 * hScale,
            child: Text(
              '$caption',
              style: const TextStyle(
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
