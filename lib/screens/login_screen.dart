import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Text(
              "Learning App",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
