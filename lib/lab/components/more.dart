import 'package:flutter/material.dart';

class MoreWidget extends StatefulWidget {
  const MoreWidget({super.key});

  @override
  State<MoreWidget> createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 1013,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '盤源',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 34,
                        decoration: BoxDecoration(color: Color(0xFFE8FCFF)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 110,
                                height: 34,
                                padding: const EdgeInsets.all(8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFF50C5D5)),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '業主盤',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF50C5D5),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '代理盤',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '景觀',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '海景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '開陽景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '山景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '市景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '園景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '樓景',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '提供設備',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '電視',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '熱水爐',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '冷氣',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '微波爐',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '洗衣機',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '雪櫃',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '提供家私',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '床',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '梳化',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '衣櫃',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '餐桌',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '周边配套',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '便利店',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '游泳池',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '超級市場',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '兒童遊樂場',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '運動場所',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '其他條件',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'VR睇樓',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '近巴士站',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '帶車位',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '可分租',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '影片睇樓',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '設備齊全',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '可明火煮食',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '近港鐵',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '豪華裝修',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 115,
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3F4F6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '可養寵物',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 393,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(width: 32, height: 32),
                            ),
                            Positioned(
                              left: 3,
                              top: 3,
                              child: Container(
                                width: 25,
                                height: 26,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      top: 4.27,
                                      child: Container(
                                        width: 17,
                                        height: 17,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD9D9D9),
                                          shape: StarBorder(
                                            points: 5,
                                            innerRadiusRatio: 0.48,
                                            pointRounding: 1,
                                            valleyRounding: 0,
                                            rotation: 0,
                                            squash: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 4,
                                      top: 4.27,
                                      child: Container(
                                        width: 17,
                                        height: 17,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 17,
                                                height: 17,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFD9D9D9),
                                                  shape: StarBorder(
                                                    points: 5,
                                                    innerRadiusRatio: 0.48,
                                                    pointRounding: 1,
                                                    valleyRounding: 0,
                                                    rotation: 0,
                                                    squash: 0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 8,
                                              top: 8.50,
                                              child: Container(
                                                width: 7.26,
                                                height: 7.26,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFE3E3E3),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '更新並儲存以上搜尋條件',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 37,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF50C5D5)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '儲存',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF50C5D5),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 393,
            height: 67,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 115,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEBEBEB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.53,
                                top: 7.88,
                                child: Container(
                                  width: 14.95,
                                  height: 4.12,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFF858585)),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10.05,
                                top: 4.71,
                                child: Container(
                                  width: 3.89,
                                  height: 4.12,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFF858585)),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5.56,
                                top: 11.08,
                                child: Container(
                                  width: 12.89,
                                  height: 9.34,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFF858585)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8.45,
                                top: 15.88,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                  child: Container(
                                    width: 3.87,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                          color: Color(0xFF858585),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 11.64,
                                top: 15.75,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                  child: Container(
                                    width: 3.87,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                          color: Color(0xFF858585),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 14.64,
                                top: 15.75,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                  child: Container(
                                    width: 3.87,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                          color: Color(0xFF858585),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        '重置',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF858585),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 230,
                  height: 50,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [Color(0xFF76DFEA), Color(0xFF43CEE1)],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '確定',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '(',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '7,592',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '個放盤)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
