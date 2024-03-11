import 'package:flutter/material.dart';
import 'package:nova852/rental_page.dart';

class ButtonS extends StatelessWidget {
  final String buttonText;
  const ButtonS({super.key, required this.buttonText});

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
          },
        ),
        const SizedBox(height: 4,),
        Text(buttonText)
      ],
    );
  }
}
