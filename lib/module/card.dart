import 'package:flutter/material.dart';

import '../routes/routes.dart';

class CardModule extends StatefulWidget {
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
  State<CardModule> createState() => _CardModuleState();
}

class _CardModuleState extends State<CardModule> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.newsdetails);
      },
      child: widget.listview
          ? SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.image,
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
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          widget.category,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.labelLarge,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.date,
                          style: Theme.of(context).textTheme.labelSmall,
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                    width: screenWidth,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.category,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.labelLarge,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Text(
                        widget.date,
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
