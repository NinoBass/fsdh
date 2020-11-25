import 'package:flutter/material.dart';
import 'package:fsdh/common/color_constants.dart';
import 'package:fsdh/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: ColorConstants.kAccentColor,
          backgroundColor: ColorConstants.kBackgroundColor),
      home: WelcomeScreen(),
    );
  }
}
