import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'notifyDetailPage.dart';

class BreakingNewsPage extends StatefulWidget {
  const BreakingNewsPage({super.key});

  @override
  State<BreakingNewsPage> createState() => _BreakingNewsPageState();
}

class _BreakingNewsPageState extends State<BreakingNewsPage> {
  List<Widget> list = <Widget>[
    ListTile(
      title: Text(
        '今日新聞',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '市場分析某某某專欄',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFF45ABF9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/news.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '訂閱筍盤',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '不限',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFF8000),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/speaker.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '今日筍盤',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '順豐大廈靚裝三房',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFFCE27),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/calendar.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '客戶服務',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '暫無數據服務',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFE6A44),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/heart_box.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight= MediaQuery.of(context).size.height;
    // double hScale = screenHeight/852;
    // double wScale = screenWidth/393;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: const Text('信息'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15,),
          child: ListView.separated(
              itemCount: 3, // 列表項目數量
              itemBuilder: (context, index) {
                //var item = snapshot.data?['data']['list'][index];
                //print(item);
                return InkWell(
                  child: Container(
                    //color: Colors.amber,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    //height: 100,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/redPonit.svg'),
                        SizedBox(width: 12,),
                        Expanded(
                            child:Column(
                              children: [
                                Container(
                                  //color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "12月房租尚未繳納",
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  "親愛的租客您好，請盡速繳交12月份房租......",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  "2024/04/22 13:20:00",
                                  style: TextStyle(
                                    color: Color(0xFF848FAC),
                                    fontSize: 12,
                                    fontFamily: 'SF Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            )
                        ),
                        SizedBox(width: 12,),
                        Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotifyDetailPage(title: "12月房租未繳納",dueTime: "2024/02/10",bankCode: "（812)3355123",bankAccount: "000123456",)),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(height: 1),
            ),
        ),
      ),
    );
  }
}
