import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String btnText;

  SmallButton({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 50.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.indigo[900],
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            "$btnText",
            style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
