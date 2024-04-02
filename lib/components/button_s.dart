import 'package:flutter/material.dart';

class ButtonS extends StatelessWidget {
  final String buttonText;
  final dynamic page;
  ButtonS({super.key, required this.buttonText, this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 40,
            height: 40,
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
        const SizedBox(height: 4,),
        Text(buttonText)
      ],
    );
  }
}
