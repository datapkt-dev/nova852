import 'package:flutter/material.dart';
import 'package:nova852/components/avatar.dart';
import 'package:nova852/components/centralTab.dart';
import 'package:nova852/components/greenBackground.dart';
import 'package:nova852/components/options.dart';

import '../../components/bottombar.dart';


class ProfilePage extends StatelessWidget {
  ProfilePage({super.key,required});



@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Stack(
        children: [
          const GreenBackground(),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 7),// 設定外邊距
              child: Column(
                children: [
                  Avatar(photoUrl: "https://www.demonslayer.com.tw/wp-content/uploads/2021/02/%E7%82%AD%E6%B2%BB%E9%83%8E-1.jpg",),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "房客姓名",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.02,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0926***899',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.24,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                            letterSpacing: 1,
                          ),
                        ),
                        Container(
                          //width: 46,
                          //height: 18,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF2A03E),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          ),
                          child:
                          const Text(
                            '已認證',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  const PaymentTab(),
                  SizedBox(height: 20,),
                  const CentralTab(),
                  SizedBox(height: 10,),
                  const Options(),
                  SizedBox(height: 10,),
                  GestureDetector(
                      onTap: () async{
                        // await signOut(context);
                      },
                      child: Container(
                        width: 340,
                        height: 46,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFF4F4F4)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '登出',
                                    style: TextStyle(
                                      color: Color(0xFFEB4D3D),
                                      fontSize: 14.24,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w400,
                                      // height: 0.11,
                                      // letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          )
        ]
    ),
  );
}
}
