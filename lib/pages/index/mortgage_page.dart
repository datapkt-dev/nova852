import 'package:flutter/material.dart';

class MortgagePage extends StatefulWidget {
  const MortgagePage({super.key});

  @override
  State<MortgagePage> createState() => _MortgagePageState();
}

class _MortgagePageState extends State<MortgagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('租屋'),
      ),
      body: Center(
        child: Text('按揭頁內容'),
      ),
    );
  }
}
