import 'package:flutter/material.dart';
import 'package:smart_news/views/signup.dart';
import 'package:smart_news/views/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String email, password;
  final _formkey = GlobalKey<FormState>();
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
                    return email.isEmpty ? "Enter Email" : null;
                  },
                  decoration: InputDecoration(
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
                hintText: "Password",
              )),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 100,
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
                    "Do you have an account?",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
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
