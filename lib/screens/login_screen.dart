import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app_ui/screens/home_screen.dart';

import 'package:learning_app_ui/widgets/custom_button.dart';
import 'package:learning_app_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen_size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "LOG IN",
          style: TextStyle(
              color: Colors.purple, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.purple,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Learning App",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Enter your log in details to access your account",
                style: TextStyle(color: Colors.purple),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialButton(
                    screen_size: screen_size,
                    icon: FontAwesomeIcons.facebook,
                    name: "Facebook",
                  ),
                  SocialButton(
                    screen_size: screen_size,
                    icon: FontAwesomeIcons.google,
                    name: "Google",
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: Text("E-mail")),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: Text("Password")),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.purple),
                  ),
                  Spacer(),
                  Text(
                    "Forget Password",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                size: screen_size,
                text: "Login with your account",
                ontap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an Account ?",
                      style: TextStyle(color: Colors.purple, fontSize: 12),
                      children: [
                    TextSpan(
                        text: "  Create Account",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold))
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
