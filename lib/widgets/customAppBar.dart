import '../routes/routes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(0, 11, 39, 1),
              Colors.transparent,
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.register);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  animationDuration: Duration.zero,
                  elevation: 0,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/shows.png', width: 22),
                    const SizedBox(width: 4),
                    const Text("البرامج"),
                  ],
                ),
              ),
              Image.asset('assets/images/aljadeed.png', width: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.live);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  animationDuration: Duration.zero,
                  elevation: 0,
                ),
                child: Row(
                  children: [
                    const Text("Live"),
                    const SizedBox(width: 4),
                    Image.asset('assets/images/live.png', width: 22),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
