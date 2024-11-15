import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:nova852/unit/nova852_storage.dart';
import 'components/bottombar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService authService = AuthService();
  final String _baseUrl = 'https://wmch-dev-api.karweecloud.com/api/app';

  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final AuthService authStorage = AuthService();

    final response = await http.post(
      Uri.parse('$_baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'Account': _accountController.text,
        'Password': _passwordController.text,
        "LoginRole": 1,
        "DeviceID":'fcmToken123',
      }),
    );


    if (response.statusCode == 200) {
      String decodedResponse = utf8.decode(response.bodyBytes);
      final data = jsonDecode(decodedResponse);
      if(data['error']!=null){
        print(data['error']);
      }else{
        if (data['code']==200) {
          // await authService.saveToken(data['data']['Token']);
          print("登入成功");
          print(data['data']['Token']);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomBar()),
          );
        } else {
          print("登入失敗");
        }
      }

    } else {
      print("登入失敗");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFAFAFA),
        body: Container(
          // color: Colors.red,
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(top: 50,),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 8,),
                  Text(
                    '',
                    style: TextStyle(
                      color: Color(0xFF131313),
                      fontFamily: 'Noto Sans TC',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 42,),
                  Container(
                    width: 340,
                    height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF8F9FA),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1A222222),
                          offset: Offset(1, 2),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '帳號',
                          style: TextStyle(
                            fontFamily: 'Noto Sans TC',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF6D6D6D),
                          ),
                        ),
                        TextField(
                          controller: _accountController,
                          obscureText: false,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // hintText: 'A1234567',
                            hintStyle: TextStyle(
                              color: Color(0XFF888888),
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          style: TextStyle(
                            fontFamily: 'Noto Sans TC',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF888888),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 340,
                    // height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF8F9FA),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1A222222),
                          offset: Offset(1, 2),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '密碼',
                          style: TextStyle(
                            fontFamily: 'Noto Sans TC',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF6D6D6D),
                          ),
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // hintText: '*******',
                            hintStyle: TextStyle(
                              color: Color(0XFF888888),
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            // suffixIcon: IconButton(
                            //   icon: Icon(
                            //     _isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            //     color: Color(0xFF848FAC),
                            //   ),
                            //   onPressed: () {
                            //     setState(() {
                            //       _isObscure = !_isObscure;
                            //     });
                            //   },
                            // ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Noto Sans TC',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF888888),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    '忘記密碼？',
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontFamily: 'Noto Sans TC',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 16,),
                  GestureDetector(
                    onTap: () {
                      _login();
                    },
                    child: Container(
                      width: 340,
                      height: 48,
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFF01ABB9),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFF8F9FA),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1A222222),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '登入',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
