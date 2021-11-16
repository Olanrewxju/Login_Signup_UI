// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screens/Login/components/background.dart';
import 'package:login_ui/Screens/Signup/signup_screen.dart';
import 'package:login_ui/components/already_have_an_account_check.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/components/rounded_inputfield.dart';
import 'package:login_ui/components/rounded_password_field.dart';
import 'package:login_ui/components/text_field.dart';
import 'package:login_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              icon: Icons.person,
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Roundedbutton(
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login:
                  true, //       SET TO TRUE JUST SO I CAN CONTINUE WITHOUT THE NULL ERROR
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
