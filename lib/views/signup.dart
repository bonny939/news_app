import 'package:flutter/material.dart';
import 'package:smart_news/views/homepage.dart';
import 'package:smart_news/views/widgets.dart';
import 'package:smart_news/views/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email, password, username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: appBar(context)),
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                  validator: (val) {
                    return username.isEmpty ? "username" : null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    hintText: "username",
                  ),
                  onChanged: (val) {
                    email = val;
                  }),
              TextFormField(
                  validator: (val) {
                    return email.isEmpty ? "Enter email" : null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                  ),
                  onChanged: (val) {
                    email = val;
                  }),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Password",
              )),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account?",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
