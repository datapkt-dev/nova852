import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String photoUrl;
  const Avatar({super.key,required this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(43),
        ),
      ),
      child:
          Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(photoUrl),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
    );
  }
}