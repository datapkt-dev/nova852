import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AreaWidget2 extends StatefulWidget {
  AreaWidget2({super.key});

  final List<String> zone = ['地區', '港鐵',];
  final List<String> area = ['港島', '九龍', '新界',];
  final List<String> areachild_0 = ['全港島', '中西區', '中半山', '山頂', '跑馬地', '北角', '中西區'];

  @override
  State<AreaWidget2> createState() => _AreaWidgetState();
}

class _AreaWidgetState extends State<AreaWidget2> {
  int _selectedZone = 0;
  int _selectedArea = 0;
  int _selectedAreaChild = 0;
  bool _showArea = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F6F7),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(widget.zone.length, (index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedArea = index;
                          if (index == 0) {
                            _showArea = true;
                          } else {
                            _showArea = false;
                          }
                        });
                      },
                      child: Container(
                        height: double.infinity,
                        // color: Colors.deepOrange,
                        alignment: Alignment.center,
                        decoration: _selectedArea == index ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF50C5D5),
                              width: 2,
                            ),
                          ),
                        ) : null,
                        child: Text(
                          widget.zone[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 28,)
                  ],
                );
              }),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Visibility(
                    visible: _showArea,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(widget.area.length, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedZone = index;
                            });
                          },
                          child: Container(
                            width: 114,
                            height: 36,
                            color: _selectedZone == index ? Color(0xFF50C5D5) : null,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.area[index],
                                  style: TextStyle(
                                    color: _selectedZone == index ? Colors.white : null,
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Icon(
                                  size: 16,
                                  color: _selectedZone == index ? Colors.white : null,
                                  _selectedZone == index ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Visibility(
                      visible: _showArea,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(widget.areachild_0.length, (index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedAreaChild = index;
                                  });
                                },
                                child: Container(
                                  height: 36,
                                  width: 114,
                                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 8,),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: _selectedAreaChild == index ? Color(0xFF50C5D5) : null,
                                    border: index < widget.areachild_0.length-1
                                        ? Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFB3B3B3),
                                        width: 1,
                                      ),
                                    )
                                        : null,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.areachild_0[index],
                                        style: TextStyle(
                                          color: _selectedAreaChild == index ? Colors.white : null,
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        size: 16,
                                        color: _selectedAreaChild == index ? Colors.white : null,
                                        _selectedAreaChild == index ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
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
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          _selectedZone = 0;
                          _selectedArea = 0;
                          _showArea = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEBEBEB),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        ),
                        child: Text(
                          '重置',
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 18,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFF50C5D5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '確定',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
