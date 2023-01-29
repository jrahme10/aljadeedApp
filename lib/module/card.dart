import 'package:flutter/material.dart';

class CardModule extends StatelessWidget {
  const CardModule({
    Key? key,
    required this.listview,
    required this.category,
    required this.title,
    required this.date,
    required this.image,
  }) : super(key: key);

  final bool listview;
  final String category;
  final String title;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            width: 100,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: screenWidth - 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                category,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.labelSmall,
                maxLines: 2,
                softWrap: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
