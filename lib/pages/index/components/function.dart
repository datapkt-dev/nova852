import 'package:flutter/material.dart';

class FunctionWidget extends StatefulWidget {
  const FunctionWidget({super.key});

  @override
  State<FunctionWidget> createState() => _FunctionWidgetState();
}

class _FunctionWidgetState extends State<FunctionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 313,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '全部用途',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（30207）',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 13,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '住宅',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（6744）',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 13,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '寫字樓',
                  style: TextStyle(
                    color: Color(0xFF50C5D5),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（2795）',
                  style: TextStyle(
                    color: Color(0xFF50C5D5),
                    fontSize: 13,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 53,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '工廠大廈',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（19940）',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 13,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '商鋪',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（728）',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 13,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '車位',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '（115）',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 13,
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
    );
  }
}
