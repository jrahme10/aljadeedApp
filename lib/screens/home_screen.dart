import 'package:aljadeedapp/widgets/news_reading.dart';
import 'package:aljadeedapp/widgets/news_watching_now.dart';
import 'package:blur/blur.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/latestNews.dart';
import '../module/card.dart';
import '../module/cardTitle.dart';
import '../widgets/customAppBar.dart';
import '../widgets/homeSwiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool listview = true;

  @override
  void initState() {
    super.initState();
    loadView();
  }

  void loadView() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      listview = prefs.getBool('listview') ?? true;
    });
  }

  _setView(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    listview = value;
    await prefs.setBool('listview', value);
  }

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

                //list view design
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _setView(true);
                        });
                      },
                      child: const Text('row view'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _setView(false);
                        });
                      },
                      child: const Text('column view'),
                    ),
                  ],
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
                    viewportFraction: 1,
                    aspectRatio: 2 / 3,
                    enableInfiniteScroll: false,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) => CardModule(
                    listview: listview,
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
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: LatestNews(
                      listview: listview,
                    )),

                const SizedBox(
                  height: 100,
                ),

                // watching now
                const NewsWatchingNow(),

                const SizedBox(
                  height: 100,
                ),

                NewsReading(),
              ],
            ),
          ),
          const CustomAppBar(),
        ]),
      ),
    );
  }
}
