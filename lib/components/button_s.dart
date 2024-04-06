import 'package:flutter/material.dart';

class ButtonS extends StatelessWidget {
  final String buttonText;
  final dynamic page;
  ButtonS({super.key, required this.buttonText, this.page});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 40 * wScale,
            height: 40 * hScale,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          onTap: () {
            if (page != null) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page));
            }
          },
        ),
        SizedBox(height: 4 * hScale,),
        Text(buttonText)
      ],
    );
  }
}
