import 'package:flutter/material.dart';

import '../../components/bottombar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('首頁'),),
      bottomNavigationBar: BottomBar(),
    );
  }
}
