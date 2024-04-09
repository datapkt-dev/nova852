import 'package:flutter/material.dart';

class Btn1Widget extends StatelessWidget {
  String btnText;
  Btn1Widget({super.key,required this.btnText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Container(
      width: 110*wScale,
      height: 34*hScale,
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
                    btnText,
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
    );
  }
}

class Btn1 extends StatefulWidget {
  String btnText;
  Btn1({super.key,required this.btnText});

  @override
  State<Btn1> createState() => _Btn1State();
}

class _Btn1State extends State<Btn1> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;
    return InkWell(
      onTap: (){
        setState(() {
          isSelect=!isSelect;
        });
      },
      child: Container(
        width: 110*wScale,
        height: 34*hScale,
        decoration: BoxDecoration(color:  isSelect?Color(0xFFE8FCFF):Color(0xFFF3F4F6)),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: isSelect?BorderSide(width: 1, color: Color(0xFF50C5D5)):BorderSide(width: 0,color: Color(0xFFF3F4F6)),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.btnText,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color:  isSelect?Color(0xFF50C5D5):Color(0xFF333333),
                  fontSize: 11,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

