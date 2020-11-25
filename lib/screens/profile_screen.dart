import 'package:fsdh/screens/login_screen.dart';
import 'package:fsdh/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:fsdh/common/constants.dart';
import 'package:fsdh/widgets/profile_list_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Column(
      children: <Widget>[
        SizedBox(height: kSpacingUnit.w * 10),
        // header,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(0, 3.0),
                      color: Color(0xFFCCC9C7)),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/images/user_photo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Odunlade Seun",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "seundavid56@gmail.com",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SmallButton(btnText: "Edit"),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ProfileListItem(
                icon: LineAwesomeIcons.credit_card,
                text: 'Payment',
                ontap: () {},
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.user_lock,
                text: 'Change Password',
                ontap: () {},
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.language,
                text: 'Language',
                ontap: () {},
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.user_plus,
                text: 'Invite a Friend',
                ontap: () {},
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.info_circle,
                text: 'About',
                ontap: () {},
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.alternate_sign_out,
                text: 'Logout',
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                },
                hasNavigation: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}
