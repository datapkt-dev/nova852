import 'package:flutter/material.dart';

class ButtonS extends StatelessWidget {
  final String buttonText;
  final dynamic page, icon;
  ButtonS({super.key, required this.buttonText, this.page, this.icon});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Column(
      children: [
        GestureDetector(
          child: icon==null ? Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ) : Container(
            width: 30,
            height: 30,
            child: icon,
          ),
          onTap: () {
            if (page != null) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page));
            }
          },
        ),
        SizedBox(height: 4,),
        Text(buttonText)
      ],
    );
  }
}
