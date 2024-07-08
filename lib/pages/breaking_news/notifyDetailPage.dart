import 'package:flutter/material.dart';

class NotifyDetailPage extends StatelessWidget {
  String title;
  String dueTime;
  String bankCode;
  String bankAccount;
  NotifyDetailPage({super.key,required this.title,required this.dueTime,required this.bankCode,required this.bankAccount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xFF171717),
            fontSize: 20,
            fontFamily: 'Noto Sans TC',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF171717),
                    fontSize: 16,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15,),
                  child: Divider(),
                ),
                Text(
                  '遺憾地通知您,我們的記錄顯示您12月份的房租尚未繳交。如果在本月底前仍未收到租金,我將不得不採取進一步的措施。這可能包括向您發出最終通知,並啟動法律程序。我希望我們能夠通過友好的溝通來解決此事。\n請您儘快聯繫我,解釋未能如期繳付房租的原因,並確保在本月底前全額支付欠款。我樂意與您商討分期付款或其他便利的安排,以幫助您度過眼前的困難時期。我相信您能夠理解我的立場,並盡快採取行動解決此事。如果您有任何需要協助的地方,請隨時告訴我,我將竭盡全力予以援助。',
                  style: TextStyle(
                    color: Color(0xFF171717),
                    fontSize: 16,
                    fontFamily: 'Noto Sans TC',
                    fontWeight: FontWeight.w400,
                    height: 2,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
