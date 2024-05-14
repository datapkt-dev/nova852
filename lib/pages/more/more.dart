import 'package:flutter/material.dart';
import 'package:nova852/about_us.dart';

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
        appBar: AppBar(
          title: Text('更多'),
        ),
        body: Column(
          children: [
            // ItemData1(headString: "通知",),
            ItemData2(headString: "給nova852評價",),
            // ItemData3(headString: "留言反饋", ),
            ItemData4(headString: "推薦好友", ),
            ItemData1(headString: "關於我們",),
          ],
        ),
      backgroundColor: Colors.white,
    );
  }
}

class ItemData1 extends StatelessWidget {
  String headString;
  ItemData1({super.key,required this.headString});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
      },
      child: Container(
        width: 393,
        height: 56,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19333333),
              blurRadius: 0,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.notifications_active_outlined,size: 18.0),
                SizedBox(width: 8,),
                Text(
                  headString,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_sharp,size: 18.0),
          ],
        ),
      ),
    );
  }
}

class ItemData2 extends StatelessWidget {
  String headString;
  ItemData2({super.key,required this.headString});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x19333333),
            blurRadius: 0,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.thumb_up,size: 18.0),
              SizedBox(width: 8,),
              Text(
                headString,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,size: 18.0),
        ],
      ),
    );
  }
}

class ItemData3 extends StatelessWidget {
  String headString;
  ItemData3({super.key,required this.headString});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x19333333),
            blurRadius: 0,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.email_outlined,size: 18.0),
              SizedBox(width: 8,),
              Text(
                headString,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,size: 18.0),
        ],
      ),
    );
  }
}

class ItemData4 extends StatelessWidget {
  String headString;
  ItemData4({super.key,required this.headString});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x19333333),
            blurRadius: 0,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.people_alt_outlined,size: 18.0),
              SizedBox(width: 8,),
              Text(
                headString,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,size: 18.0),
        ],
      ),
    );
  }
}