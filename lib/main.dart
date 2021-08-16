import 'package:flutter/material.dart';
import 'package:yby_sharing_app/screens/home/home.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

// now we run our project
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removing the debugg banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // theme primarycolor
        primaryColor: kPrimaryColor,
        //appbar setting

        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
          color: Colors.black,
        )),
      ),

      // replace the myHomePage with HomeScreen
      home: HomeScreen(),
    );
  }
}

// create a new dart file 