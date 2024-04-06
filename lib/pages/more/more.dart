import 'package:flutter/material.dart';

import '../../components/bottombar.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('更多'),),
      bottomNavigationBar: BottomBar(),
    );
  }
}
