import 'package:aljadeedapp/widgets/news_watching_now.dart';
import 'package:blur/blur.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/latestNews.dart';
import '../module/card.dart';
import '../module/cardTitle.dart';
import '../widgets/customAppBar.dart';
import '../widgets/homeSwiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 60,
          width: 60,
          color: const Color.fromARGB(150, 0, 0, 0),
        ).blurred(
          colorOpacity: 0.2,
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(20)),
          blur: 4,
          overlay: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Image.asset(
              "assets/images/search_homepage.png",
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(alignment: AlignmentDirectional.topStart, children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //swiper
                const HomeSwiper(),
                const SizedBox(
                  height: 15,
                ),

                //trending
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: CardTitle(
                    title: "تراندينغ",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 100,
                    viewportFraction: 0.95,
                    aspectRatio: 2.0,
                    enableInfiniteScroll: false,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) => const CardModule(
                    listview: true,
                    category: "ثقافة وفن",
                    title:
                        "مخابرات الجيش وقوّة من مجموعة الشواطئ البحرية التابعة لقوى الأمن …",
                    date: "مند ساعة",
                    image: "assets/images/news_small.png",
                  ),
                ),

                const SizedBox(
                  height: 70,
                ),

                //latest news
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: LatestNews(),
                ),

                const SizedBox(
                  height: 100,
                ),

                const NewsWatchingNow(),
              ],
            ),
          ),
          const CustomAppBar(),
        ]),
      ),
    );
  }
}
