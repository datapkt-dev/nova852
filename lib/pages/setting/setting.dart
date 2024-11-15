import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../l10n/l10n.dart';
import '../../models/locale.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool light = true;
  int _selectedLocale = 0;
  late Locale currentLocale;

  @override
  void initState() {
    super.initState();
  }

  void _showPicker(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // 讓 popup modal 對齊底部
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Popup model 背景.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localeModel = Provider.of<LocaleModel>(context);
    currentLocale = Localizations.localeOf(context);
    // print(currentLocale);
    // print(currentLocale.languageCode);
    _selectedLocale = L10n.languages.indexOf(currentLocale.languageCode);

    return Scaffold(
      // backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: Text(AppLocalizations.of(context)!.setting),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: const Color(0xFFF2F2F2),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FC9C9C9),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        AppLocalizations.of(context)!.setting,
                        style: const TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showPicker(
                          CupertinoPicker(
                            magnification: 1.22,
                            squeeze: 1.2,
                            useMagnifier: true,
                            itemExtent: 32.0,
                            scrollController: FixedExtentScrollController(
                              initialItem: _selectedLocale,
                            ),
                            onSelectedItemChanged: (int selectedItem) {
                              setState(() {
                                _selectedLocale = selectedItem;
                              });
                              localeModel.setLocale(L10n.all[selectedItem]);
                              // print(_sclectedLocale)
                            },
                            children: List<Widget>.generate(
                              L10n.languages.length, (int index) {
                                return Center(child: Text(L10n.languages[index]));
                              }
                            )
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  width: 20,
                                  height: 20,
                                  'assets/icons/setting/globe.svg',
                                ),
                                SizedBox(width: 12,),
                                Text(
                                  AppLocalizations.of(context)!.language,
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  L10n.languages[_selectedLocale],
                                  style: TextStyle(
                                    color: Color(0xFF6D6D6D),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // CupertinoListTile.notched(
                    //     onTap: () {
                    //       // 將 picker 樣式傳入 showPicker 函式中
                    //       _showPicker(CupertinoPicker(
                    //           magnification: 1.22,
                    //           squeeze: 1.2,
                    //           useMagnifier: true,
                    //           itemExtent: 32.0,
                    //           scrollController: FixedExtentScrollController(
                    //             initialItem: _selectedLocale,
                    //           ),
                    //           onSelectedItemChanged: (int selectedItem) {
                    //             setState(() {
                    //               _selectedLocale = selectedItem;
                    //             });
                    //             localeModel.setLocale(L10n.all[selectedItem]);
                    //             // print(_sclectedLocale)
                    //           },
                    //           children: List<Widget>.generate(
                    //               L10n.languages.length, (int index) {
                    //             return Center(child: Text(L10n.languages[index]));
                    //           })));
                    //     },
                    //     title: const Text('顯示語言'),
                    //     leading: DecoratedBox(
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: CupertinoColors.systemGreen),
                    //         child: const Padding(
                    //           padding: EdgeInsets.all(4),
                    //           child: Icon(CupertinoIcons.t_bubble_fill,
                    //               color: CupertinoColors.white, size: 20),
                    //         )),
                    //     trailing: Text(L10n.languages[_selectedLocale])
                    // ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                width: 20,
                                height: 20,
                                'assets/icons/setting/bell.svg',
                              ),
                              SizedBox(width: 12,),
                              Text(
                                AppLocalizations.of(context)!.push_notifications,
                                style: TextStyle(
                                  color: Color(0xFF171717),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                            child: Switch(
                              value: light,
                              activeColor: Color(0xFF50C5D5),
                              onChanged: (bool value) {
                                setState(() {
                                  light = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        AppLocalizations.of(context)!.general,
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/home.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.go_to_the_website,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/thumbs.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.rate_our_app,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/facebook.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.follow_page,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/share.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.recommend,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        AppLocalizations.of(context)!.more,
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/twitch.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.about_us,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/phone.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            AppLocalizations.of(context)!.contact_us,
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Nova 852  |  2024  |  v1.2.2.3',
                        style: TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                  ],
                ),
              ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FC9C9C9),
                        blurRadius: 4,
                        offset: Offset(0, -4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
