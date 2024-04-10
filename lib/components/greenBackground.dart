import 'package:flutter/material.dart';

class GreenBackground extends StatelessWidget {
  const GreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 248,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFF38C2D8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 44,
            top: 81,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          ),
          Positioned(
            left: 255,
            top: -50,
            child: Container(
              width: 220,
              height: 220,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 30,
                    color: Colors.white.withOpacity(0.20000000298023224),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: -186,
            top: -474,
            child: Container(
              width: 715,
              height: 715,
              decoration: const ShapeDecoration(
                color: Color(0xFF38C2D8),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: -257,
            top: -526,
            child: Container(
              width: 715,
              height: 715,
              decoration: const ShapeDecoration(
                color: Color(0xFF38C2D8),
                shape: OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}