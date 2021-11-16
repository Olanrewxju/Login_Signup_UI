// ignore_for_file: unused_local_variable, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:login_ui/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Body(),
    );
  }
}
