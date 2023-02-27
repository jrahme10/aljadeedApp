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
      mainAxisAlignment: MainAxisAlignment.center,
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              children: [
                for (var i = 0; i <= 6; i++)
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/movie.jpg',
                          fit: BoxFit.cover,
                          height: 210,
                          width: 140,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
