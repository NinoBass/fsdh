import 'package:fsdh/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsdh/screens/profile_screen.dart';

class CurrentScreenIndex extends StatelessWidget {
  final int index;

  CurrentScreenIndex(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        {
          return HomeScreen();
        }
        break;
      case 1:
        {
          return Container(
            color: Colors.blue,
          );
        }
        break;
      case 2:
        {
          return Container(
            color: Colors.green,
          );
        }
        break;
      case 3:
        {
          return ProfileScreen();
        }
        break;
      default:
        {
          return HomeScreen();
        }
        break;
    }
  }
}
