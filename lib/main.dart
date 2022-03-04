import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/suraDetails/sura_details.dart';

import 'home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
