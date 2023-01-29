import 'package:flutter/material.dart';

import '../module/input_button.dart';
import '../module/input_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

const List<String> list = <String>['لبنان', 'قبرص'];

class _RegisterState extends State<Register> {
  String? selectedValue = list.first;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 8, 30),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      //images
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/missing_imposs.png",
                              width: screenWidth * 0.25,
                              height: 246,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              "assets/images/jungle.png",
                              width: screenWidth * 0.5,
                              height: 246,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              "assets/images/legends.png",
                              width: screenWidth * 0.25,
                              height: 246,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      // gradient
                      Positioned(
                        width: screenWidth,
                        left: 0,
                        bottom: -1,
                        height: 166,
                        child: Container(
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
                    ],
                  ),

                  //form
                  Stack(clipBehavior: Clip.none, children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 80, 20, 17),
                      child: Column(
                        children: [
                          Text(
                            "أو عبر البريد الالكتروني",
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 18.0,
                              fontFamily: "AlmaraiBold",
                            ),
                          ),
                          const SizedBox(
                            height: 47,
                          ),
                          const InputTextField(
                            hintText: 'الاسم الكامل',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'البريد الالكتروني',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'تأكيد البريد الالكتروني',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'البلد',
                            asDropdown: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'رقم الهاتف',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'كلمة المرور',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputTextField(
                            hintText: 'تأكيد كلمة المرور',
                            asDropdown: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputButton(),
                          const SizedBox(
                            height: 53,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 8, 16, 37),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'مشترك مسبقاً؟',
                                    style: TextStyle(
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontFamily: 'Almarai',
                                        fontSize: 14),
                                  ),
                                  TextButton(
                                    child: Text(
                                      'قم بتسجيل الدخول',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                          fontFamily: 'Almarai',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    onPressed: () {},
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    //social media login
                    Positioned(
                      top: -34,
                      left: 0,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 68,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/images/twitter.png',
                            width: 68,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/images/apple.png',
                            width: 68,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/images/google.png',
                            width: 68,
                          ),
                        ],
                      ),
                    )
                  ]),
                ],
              ),
            ),

            //app bar
            Positioned(
              width: screenWidth,
              left: 0,
              top: 0,
              height: 160,
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
                      Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 16.0,
                          fontFamily: "AlmaraiBold",
                        ),
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
          ],
        ),
      ),
    );
  }
}
