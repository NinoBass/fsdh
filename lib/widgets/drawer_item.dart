import 'package:flutter/material.dart';
import 'package:fsdh/common/color_constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const DrawerItem({Key key, this.icon, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 20,
        color: ColorConstants.kOrangeColor,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 16, color: Colors.white),
      ),
      trailing: Icon(
        LineAwesomeIcons.angle_right,
        size: 18,
        color: ColorConstants.kOrangeColor,
      ),
    );
  }
}
