import 'package:flutter/material.dart';

class Button_s extends StatelessWidget {
  String button_text;
  Button_s({super.key, required this.button_text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text(button_text)
      ],
    );
  }
}
