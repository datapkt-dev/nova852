import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_detail.dart';
import 'package:nova852/lab/components/price.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';
import 'package:nova852/pages/index/components/list_item.dart';
import 'package:nova852/pages/index/components/more.dart';

class NewRentalPage extends StatefulWidget {
  NewRentalPage({super.key});

  final List<String> tab = ['用途', '地區', '價錢', '面積', '其他', '排序'];
  final List<String> tab2 = ['Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging'];
  final filterWidget = [FunctionWidget2(), AreaWidget2(), PriceWidget(), Container(), MoreWidget(), Container()];

  @override
  State<NewRentalPage> createState() => _NewRentalPageState();
}

class _NewRentalPageState extends State<NewRentalPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
