import 'package:flutter/material.dart';
import 'package:smart_news/views/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: appBar(context),
      elevation: 0.0,
    ));
  }
}
