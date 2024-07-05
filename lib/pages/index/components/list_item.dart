import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 164,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/featured_item.png'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: SizedBox(
              height: 164,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '將軍澳 東港城 1座 高層 C室',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontSize: 16,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '實用 463呎',
                        style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 8,),
                      Text(
                        '@\$10,234',
                        style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Text(
                    '1房 1廳',
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 14,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Divider(color: Color(0xFF6D6D6D),),
                  Text(
                    '獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontSize: 14,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 62,
                            height: 22,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Tagging',
                              style: TextStyle(
                                color: Color(0xFF07A1B4),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 4,),
                          Container(
                            width: 62,
                            height: 22,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Tagging',
                              style: TextStyle(
                                color: Color(0xFF07A1B4),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$900',
                            style: TextStyle(
                              color: Color(0xFFE86100),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '萬',
                            style: TextStyle(
                              color: Color(0xFFE86100),
                              fontSize: 12,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
