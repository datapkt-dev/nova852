import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '服務選項1',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.24,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/arrow.svg'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '服務選項2',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.24,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 24,
                  height: 24,
                  child:SvgPicture.asset('assets/icons/arrow.svg'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '服務選項3',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.24,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/arrow.svg'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '服務選項4',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.24,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/arrow.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}