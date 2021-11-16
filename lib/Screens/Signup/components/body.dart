// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/Screens/Signup/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/Screens/Signup/components/or_divider.dart';
import 'package:login_ui/Screens/Signup/components/social_icon.dart';
import 'package:login_ui/components/already_have_an_account_check.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/components/rounded_inputfield.dart';
import 'package:login_ui/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Roundedbutton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
