import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsdh/common/color_constants.dart';
import 'package:fsdh/screens/login_screen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _agree = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(LineAwesomeIcons.arrow_left),
              color: Colors.indigo[900],
              onPressed: () => Navigator.pop(context)),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Hello There!',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Sign up to continue',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 35),
                Center(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        // onChanged: (value) {
                        //   model.isValidEmail(value);
                        // },
                        obscureText: false,
                        cursorColor: Colors.indigo[900],
                        decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: ColorConstants.kOrangeColor,
                            ),
                            labelText: 'Full Name',
                            prefixIcon: Icon(
                              LineAwesomeIcons.user_1,
                              size: 18,
                              color: ColorConstants.kOrangeColor,
                            ),
                            // suffixIcon: Icon(model.isValid ? Icons.check : null,
                            //   size: 18,
                            //   color: ColorConstants.kOrangeColor,
                            // ),
                            focusColor: ColorConstants.kOrangeColor,
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.indigo[900]))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        // onChanged: (value) {
                        //   model.isValidEmail(value);
                        // },
                        obscureText: false,
                        cursorColor: Colors.indigo[900],
                        decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: ColorConstants.kOrangeColor,
                            ),
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              size: 18,
                              color: ColorConstants.kOrangeColor,
                            ),
                            // suffixIcon: Icon(model.isValid ? Icons.check : null,
                            //   size: 18,
                            //   color: ColorConstants.kOrangeColor,
                            // ),
                            focusColor: ColorConstants.kOrangeColor,
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.indigo[900]))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        // onChanged: (value) {
                        //   model.isValidEmail(value);
                        // },
                        obscureText: true,
                        cursorColor: Colors.indigo[900],
                        decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: ColorConstants.kOrangeColor,
                            ),
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 18,
                              color: ColorConstants.kOrangeColor,
                            ),
                            // suffixIcon: Icon(model.isValid ? Icons.check : null,
                            //   size: 18,
                            //   color: ColorConstants.kOrangeColor,
                            // ),
                            focusColor: ColorConstants.kOrangeColor,
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: Colors.indigo[900]))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(_agree
                          ? CupertinoIcons.check_mark_circled_solid
                          : CupertinoIcons.check_mark_circled),
                      onPressed: () {
                        setState(() {
                          if (_agree == false)
                            _agree = true;
                          else if (_agree == true) _agree = false;
                        });
                      },
                      color: _agree
                          ? Colors.indigo[900]
                          : ColorConstants.kOrangeColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('By creating an account, you agree to our ',
                            style: TextStyle(
                              color: Colors.indigo[900],
                            )),
                        Text('Terms and Conditions',
                            style: TextStyle(
                                color: Colors.indigo[900],
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.indigo[900]),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorConstants.kOrangeColor,
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    onPressed: () {},
                    child: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: ColorConstants.kOrangeColor,
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
