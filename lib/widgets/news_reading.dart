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
    int? activeTabIndex = 0;

    activeTabIndex = DefaultTabController.of(context)?.index;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: TabBar(
            labelColor: const Color(0xff111111),
            unselectedLabelColor: const Color(0xff999999),
            indicatorColor: const Color(0xff000B27),
            labelStyle: const TextStyle(
              fontFamily: 'AlmaraiBold',
              fontSize: 20,
            ),
            tabs: const [
              Tab(
                text: 'الآن',
              ),
              Tab(
                text: 'الأبرز',
              ),
              Tab(
                text: 'الأكثر قراءة',
              ),
            ],
            controller: tabController,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              CardModule(
                listview: true,
                category: "ثقافة وفن",
                title:
                    "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
                date: "مند ساعة",
                image: "assets/images/news_small.png",
              ),
              CardModule(
                listview: true,
                category: "ثقافة وفن",
                title:
                    "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
                date: "مند ساعة",
                image: "assets/images/news_small.png",
              ),
              CardModule(
                listview: true,
                category: "ثقافة وفن",
                title:
                    "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
                date: "مند ساعة",
                image: "assets/images/news_small.png",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
