import 'package:aljadeedapp/routes/routes.dart';
import 'package:aljadeedapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorLight: Colors.black,
        primaryColorDark: Colors.white,
        textTheme: const TextTheme(
          labelSmall: TextStyle(
            fontSize: 11.0,
            fontFamily: "Almarai",
            letterSpacing: 0,
          ),
          labelMedium: TextStyle(
            fontSize: 11.0,
            fontFamily: "AlmaraiBold",
            letterSpacing: 0,
            color: Color.fromARGB(246, 128, 29, 14),
          ),
          labelLarge: TextStyle(
            fontSize: 14.0,
            fontFamily: "AlmaraiBold",
            letterSpacing: 0,
          ),
          headlineLarge: TextStyle(
            fontSize: 22.0,
            fontFamily: "AlmaraiBold",
            letterSpacing: 0,
            color: Color.fromARGB(255, 19, 17, 17),
          ),
        ),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "LB"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: const Locale("ar",
          "LB"), // OR Locale('ar', 'AE') OR Other RTL locales// OR Locale('ar', 'AE') OR Other RTL locales,

      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.splashScreen,
      title: 'Al Jadeed',
    );
  }
}
