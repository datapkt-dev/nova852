import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/components/buttons/btn1.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Container(
        width: double.infinity,
        //height: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              width: 393,
              height: 37,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 115,
                    height: 37,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFBFBFB),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFEBEBEB),
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${_currentRangeValues.start.round()}',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 18,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: 48,
                    height: 37,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 14.75,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEBEBEB),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 115,
                          height: 37,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFBFBFB),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEBEBEB),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${_currentRangeValues.end.round()}',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '元',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                // 隱藏滑塊操作時的數字標籤
                showValueIndicator: ShowValueIndicator.never,
                thumbShape: CustomSliderThumbImage(
                  thumbRadius: 20,
                  imageProvider: const AssetImage('assets/images/thumb.png'), // 或使用 SvgPicture.asset('assets/your_icon.svg').image
                ),
                // 可選，自定義其他屬性，例如滑塊的顏色
                activeTrackColor: Color(0xFF50C5D5), // 滑動條激活部分的顏色
                inactiveTrackColor: Colors.grey, // 滑動條非激活部分的顏色
                thumbColor: Color(0xFF50C5D5), // 滑塊的顏色
                overlayColor: Color(0xFF50C5D5).withAlpha(32), // 滑塊外圍顯示的顏色
              ),
              child: RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 100,
                divisions: 100,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values; // 更新範圍值
                  });
                },
              ),
            ),
            Container(
              // width: 393*wScale,
              // height: 76*hScale,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Btn1(btnText: "5,000以下"),
                      SizedBox(width: 8*wScale),
                      Btn1(btnText: "5,000-10,000元"),
                      SizedBox(width: 8*wScale),
                      Btn1(btnText: "15,000-10,000元")
                    ],
                  ),
                  SizedBox(height: 8*hScale,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Btn1(btnText: "5,000以下"),
                      SizedBox(width: 8*wScale),
                      Btn1(btnText: "5,000-10,000元"),
                      SizedBox(width: 8*wScale),
                      Btn1(btnText: "15,000-10,000元")
                    ],
                  ),
                ],
              )
            ),
            Container(
                padding: EdgeInsets.only(top: 9,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 115,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEBEBEB),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SvgPicture.asset('assets/icons/reset.svg'),
                          Text(
                            '重置',
                            style: TextStyle(
                              color: Color(0xFF858585),
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 230,
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
                  ],
                )
            ),
          ],
        )
    );
  }
}

class CustomSliderThumbImage extends SliderComponentShape {
  final double thumbRadius;
  final ImageProvider imageProvider;

  CustomSliderThumbImage({required this.thumbRadius, required this.imageProvider});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow}) {
    final ImageConfiguration imageConfig = ImageConfiguration(size: Size.fromRadius(thumbRadius));
    final ImageStream imageStream = imageProvider.resolve(imageConfig);
    final ImageStreamListener listener = ImageStreamListener((ImageInfo image, bool synchronousCall) {
      final imageOffset = Offset(
        center.dx - (image.image.width / 2),
        center.dy - (image.image.height / 2),
      );
      paintImage(
          canvas: context.canvas,
          rect: Rect.fromLTWH(imageOffset.dx, imageOffset.dy, image.image.width.toDouble(), image.image.height.toDouble()),
          image: image.image,
          fit: BoxFit.fill);
    });

    imageStream.addListener(listener);
    imageStream.removeListener(listener); // You might need a better way to manage the listener's lifecycle
  }
}
