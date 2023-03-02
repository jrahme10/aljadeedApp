import 'package:aljadeedapp/widgets/latestNews.dart';
import 'package:flutter/material.dart';

import '../module/card.dart';

class NewsReading extends StatefulWidget {
  const NewsReading({super.key});

  @override
  State<NewsReading> createState() => _NewsReadingState();
}

class _NewsReadingState extends State<NewsReading> {
  final GlobalKey _nowWidgetKey = GlobalKey();
  final GlobalKey _highlightedWidgetKey = GlobalKey();
  final GlobalKey _mostReadWidgetKey = GlobalKey();

  double barLeft = 0;

  void _getWidgetInfo(GlobalKey key) {
    final RenderBox renderBox =
        key.currentContext?.findRenderObject() as RenderBox;

    final Size size = renderBox.size; // or _widgetKey.currentContext?.size
    print('Size: ${size.width}, ${size.height}');

    final Offset offset = renderBox.localToGlobal(Offset.zero);
    print('Offset: ${offset.dx}, ${offset.dy}');
    print(
        'Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');

    barLeft = offset.dx;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff999999),
                    width: 2.0,
                  ),
                ),
              ),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _getWidgetInfo(_nowWidgetKey);
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        'الآن',
                        style: const TextStyle(
                          fontFamily: 'AlmaraiBold',
                          fontSize: 20,
                          color: Color(0xff111111),
                        ),
                        key: _nowWidgetKey,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _getWidgetInfo(_highlightedWidgetKey);
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        'الأبرز',
                        style: const TextStyle(
                          fontFamily: 'AlmaraiBold',
                          fontSize: 20,
                          color: Color(0xff111111),
                        ),
                        textAlign: TextAlign.center,
                        key: _highlightedWidgetKey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _getWidgetInfo(_mostReadWidgetKey);
                      });
                    },
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        'الأكثر قراءة',
                        style: const TextStyle(
                          fontFamily: 'AlmaraiBold',
                          fontSize: 20,
                          color: Color(0xff111111),
                        ),
                        textAlign: TextAlign.center,
                        key: _mostReadWidgetKey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 100),
              left: barLeft,
              top: 61,
              width: 76,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 4,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
