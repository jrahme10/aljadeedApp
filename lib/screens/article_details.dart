import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  const ArticleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Image(
                image: const AssetImage('assets/images/homepage.png'),
                fit: BoxFit.cover,
                width: screenWidth,
              ),
              //app bar
              Positioned(
                width: screenWidth,
                left: 0,
                top: 0,
                height: 170,
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromRGBO(0, 11, 39, 1),
                        Color.fromRGBO(0, 11, 39, 1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 36, 20, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 20,
                              color: Colors.red,
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            ),
                            Text(
                              "سياسة",
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 16.0,
                                fontFamily: "AlmaraiBold",
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            animationDuration: Duration.zero,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/close.png",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                width: screenWidth,
                left: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.transparent,
                        Color.fromRGBO(0, 11, 39, 1),
                        Color.fromRGBO(0, 11, 39, 1),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 36, 20, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'تصنيف دبي ضمن أفضل مدن العالم في الترتيب الجديد',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'almaraibold',
                              height: 2),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Text(
                            '13:11 | 2022-03-16',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontFamily: 'almarai',
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
