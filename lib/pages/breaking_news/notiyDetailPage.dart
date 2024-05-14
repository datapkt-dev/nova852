import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifyDetailPage extends StatelessWidget {
  String title;
  String dueTime;
  String bankCode;
  String bankAccount;
  NotifyDetailPage({super.key,required this.title,required this.dueTime,required this.bankCode,required this.bankAccount});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/812;
    double wScale = screenWidth/375;

    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20*hScale,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '請透過電話與房東或房中聯繫，詢問未繳清房租金額\n',
                        style: TextStyle(
                          color: Color(0xFF4A74EA),
                          fontSize: 14,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20*hScale,),
                Text(
                  '繳款截止日期',
                  style: TextStyle(
                    color: Color(0xFF848FAC),
                    fontSize: 12,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 4*hScale,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: dueTime,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '前',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20*hScale,),
                Text(
                  '銀行代碼',
                  style: TextStyle(
                    color: Color(0xFF848FAC),
                    fontSize: 12,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 4*hScale,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: bankCode,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20*hScale,),
                Text(
                  '銀行帳號',
                  style: TextStyle(
                    color: Color(0xFF848FAC),
                    fontSize: 12,
                    fontFamily: 'PingFang TC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 4*hScale,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: bankAccount,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20*hScale,),
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 220 * hScale,
                //           width: 220 * wScale,
                //           decoration: BoxDecoration(
                //             border: Border.all(color: Color(0xFFEEEEEE)),
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           child: QrImageView(
                //             data: bankAccount,
                //             version: QrVersions.auto,
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(height: 20*hScale,),
                //     const Text(
                //       '若您已經完成支付，請忽略此訊息。\n如有任何疑問或需要協助，請與我們聯繫',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         color: Color(0xFF999999),
                //         fontSize: 12,
                //         fontFamily: 'PingFang TC',
                //         fontWeight: FontWeight.w400,
                //         height: 0,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            )
        ),
      ),
    );
  }
}
