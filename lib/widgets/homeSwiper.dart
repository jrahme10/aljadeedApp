import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSwiper extends StatefulWidget {
  const HomeSwiper({super.key});

  @override
  State<HomeSwiper> createState() => _HomeSwiperState();
}

class _HomeSwiperState extends State<HomeSwiper> with TickerProviderStateMixin {
  final _controller = PageController(initialPage: 0);
  int _selectedIndex = 0;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    _controller.addListener(() {
      setState(() {
        _controller.page;
      });
    });

    return Stack(alignment: AlignmentDirectional.bottomStart, children: [
      CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          aspectRatio: 2 / 3,
          viewportFraction: 1,
          autoPlay: true,
          height: screenHeight * 0.8,
          enableInfiniteScroll: false,
          autoPlayCurve: Curves.easeInOut,
          scrollDirection: Axis.horizontal,
          scrollPhysics: const ScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          onPageChanged: (index, reason) {
            setState(() {
              _selectedIndex = index;
              controller.reset();
              controller.forward();
            });
          },
          autoPlayInterval: const Duration(seconds: 4),
        ),
        itemBuilder: (context, index, page) => Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Image(
              image: const AssetImage('assets/images/homepage.png'),
              fit: BoxFit.cover,
              width: screenWidth,
              height: screenHeight,
            ),
            Positioned(
              left: 0,
              bottom: 0,
              height: 237,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.transparent,
                      Color.fromRGBO(0, 11, 39, 1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "تصنيف دبي ضمن أفضل مدن العالم في الترتيب الجديد",
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 24,
                          fontFamily: "AlmaraiBold",
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        "مند ساعة",
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 12,
                          fontFamily: "Almarai",
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // swiper indicator
      Positioned(
        right: 0,
        bottom: 25,
        height: 1,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 10,
          children: [
            for (int i = 0; i < 3; i++)
              SizedBox(
                height: 2,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: LinearProgressIndicator(
                    value: controller.value,
                    color: (i == _selectedIndex)
                        ? const Color.fromARGB(255, 0, 72, 255)
                        : Colors.white,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    ]);
  }
}
