import 'package:flutter/material.dart';
import 'package:fsdh/common/color_constants.dart';
import 'package:fsdh/screens/index.dart';
import 'package:fsdh/screens/signup_screen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  'Login',
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
                  'Sign in to continue',
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
                            labelText: 'Username or Email',
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
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.indigo[900], fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                              builder: (BuildContext context) => IndexPage()));
                    },
                    child: Text(
                      'LOGIN',
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
                      "Don\'t have an account?",
                      style: TextStyle(
                          color: ColorConstants.kOrangeColor,
                          fontFamily: 'Josefin Sans'),
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
                              return SignupPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
