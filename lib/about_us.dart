import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('關於我們'),
      ),
      body: Center(
        child: Text('About Us'),
      ),
    );
  }
}
