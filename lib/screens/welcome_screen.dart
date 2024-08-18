import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/welcome_image.png"),
              Text(
                "Online Learning Platform",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome to Learning App, your gateway to knowledge! Whether you're looking to enhance your skills, explore new subjects, or advance your career, our app offers a wide range of courses designed to help you achieve your goals. Start your learning journey today!",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
