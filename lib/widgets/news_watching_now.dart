import 'package:aljadeedapp/widgets/video_slider.dart';
import 'package:flutter/material.dart';

class NewsWatchingNow extends StatelessWidget {
  const NewsWatchingNow({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 0, 11, 39),
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 58,
          ),
          Text(
            "نشرة الأخبار",
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 22,
              decoration: TextDecoration.underline,
              fontFamily: 'AlmaraiBold',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 18,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Image.asset('assets/images/akhbar.jpg'),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
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
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: SizedBox(
                  width: 55,
                  child: Image.asset(
                    'assets/images/play.png',
                    width: 55,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'نشرة الأخبار المسائية ليوم الخميس',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 18,
              fontFamily: 'AlmaraiBold',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '30-06-2022',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 18,
              fontFamily: 'AlmaraiBold',
            ),
          ),
          const SizedBox(
            height: 97,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                width: MediaQuery.of(context).size.width,
                left: 0,
                bottom: 0,
                height: 30,
                child: Container(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              const VideoSlider(),
            ],
          )
        ],
      ),
    );
  }
}
