import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VideoSlider extends StatefulWidget {
  const VideoSlider({super.key});

  @override
  State<VideoSlider> createState() => _VideoSliderState();
}

class _VideoSliderState extends State<VideoSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text(
            'تشاهدون الآن',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 22,
              fontFamily: 'AlmaraiBold',
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 0.4,
            enableInfiniteScroll: false,
            disableCenter: true,
            enlargeCenterPage: false,
            pageSnapping: true,
            height: 207,
            autoPlayCurve: Curves.easeInOut,
            scrollPhysics: const ScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
          ),
          itemCount: 6,
          itemBuilder: (context, index, realIndex) => Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/images/movie.jpg'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
