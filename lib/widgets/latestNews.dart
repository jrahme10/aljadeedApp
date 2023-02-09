import 'package:aljadeedapp/module/cardTitle.dart';
import 'package:flutter/material.dart';

import '../module/card.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({
    super.key,
    required this.listview,
  });

  final bool listview;

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CardTitle(
          title: "يحدث الآن",
        ),
        const SizedBox(
          height: 30,
        ),
        CardModule(
          listview: widget.listview,
          category: "ثقافة وفن",
          title:
              "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
          date: "مند ساعة",
          image: "assets/images/news_small.png",
        ),
        const SizedBox(
          height: 30,
        ),
        CardModule(
          listview: widget.listview,
          category: "ثقافة وفن",
          title:
              "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
          date: "مند ساعة",
          image: "assets/images/news_small.png",
        ),
        const SizedBox(
          height: 30,
        ),
        CardModule(
          listview: widget.listview,
          category: "ثقافة وفن",
          title:
              "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
          date: "مند ساعة",
          image: "assets/images/news_small.png",
        ),
        const SizedBox(
          height: 30,
        ),
        CardModule(
          listview: widget.listview,
          category: "ثقافة وفن",
          title:
              "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
          date: "مند ساعة",
          image: "assets/images/news_small.png",
        ),
        const SizedBox(
          height: 30,
        ),
        CardModule(
          listview: widget.listview,
          category: "ثقافة وفن",
          title:
              "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
          date: "مند ساعة",
          image: "assets/images/news_small.png",
        ),
      ],
    );
  }
}
