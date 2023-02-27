import 'package:flutter/material.dart';

import '../module/card.dart';

class NewsReading extends StatefulWidget {
  const NewsReading({super.key});

  @override
  State<NewsReading> createState() => _NewsReadingState();
}

class _NewsReadingState extends State<NewsReading>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: TabBar(
            tabs: const [
              Tab(
                child: Text(
                  'test',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'test',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'test',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ],
            controller: tabController,
          ),
        ),
        // SizedBox(
        //   width: 100,
        //   height: 100,
        //   child: TabBarView(
        //     controller: tabController,
        //     children: [
        //       CardModule(
        //         listview: true,
        //         category: "ثقافة وفن",
        //         title:
        //             "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
        //         date: "مند ساعة",
        //         image: "assets/images/news_small.png",
        //       ),
        //       CardModule(
        //         listview: true,
        //         category: "ثقافة وفن",
        //         title:
        //             "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
        //         date: "مند ساعة",
        //         image: "assets/images/news_small.png",
        //       ),
        //       CardModule(
        //         listview: true,
        //         category: "ثقافة وفن",
        //         title:
        //             "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
        //         date: "مند ساعة",
        //         image: "assets/images/news_small.png",
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
