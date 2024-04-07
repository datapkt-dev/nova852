import 'package:flutter/material.dart';

import '../../components/bottombar.dart';

class BreakingNewsPage extends StatefulWidget {
  const BreakingNewsPage({super.key});

  @override
  State<BreakingNewsPage> createState() => _BreakingNewsPageState();
}

class _BreakingNewsPageState extends State<BreakingNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('消息'),
    );
  }
}
