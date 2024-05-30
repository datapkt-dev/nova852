import 'package:flutter/material.dart';

class MoreWidget extends StatefulWidget {
  const MoreWidget({super.key});

  @override
  State<MoreWidget> createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 393,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '盤源',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                ExpansionTile(
                  title: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('間隔'),
                      IconButton(
                        icon: Icon(
                          isExpanded ? Icons.expand_less : Icons.expand_more,
                        ),
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                      ),
                    ],
                  ),
                  initiallyExpanded: isExpanded,
                  children: <Widget>[
                    CheckboxListTile(
                      title: Text('開放式 (2,093)'),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    CheckboxListTile(
                      title: Text('1房 (1,222)'),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    CheckboxListTile(
                      title: Text('2房 (3,222)'),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    CheckboxListTile(
                      title: Text('3房 (923)'),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    CheckboxListTile(
                      title: Text('4房或以上 (123)'),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
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
                        gradient: LinearGradient(
                          begin: Alignment(0.99, -0.16),
                          end: Alignment(-0.99, 0.16),
                          colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '確定 (7,623個樓盤)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
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
