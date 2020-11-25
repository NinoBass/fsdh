import 'package:fsdh/common/current_screen_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBarPortrait(),
      body: CurrentScreenIndex(selectedOptionIndex),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  Widget _buildBottomNavigationBarPortrait() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.home,
            size: 25.0,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(LineAwesomeIcons.line_chart),
          title: Text('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.wallet,
            size: 25.0,
          ),
          title: Text('Cards'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            LineAwesomeIcons.user_circle_1,
            size: 25.0,
          ),
          title: Text('Profile'),
        ),
      ],
      currentIndex: selectedOptionIndex,
      onTap: _onItemTapped,
      elevation: 0.0,
      selectedFontSize: 12,
      unselectedFontSize: 10,
      selectedItemColor: Colors.indigo[900],
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
