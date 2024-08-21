import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "My Classes",
          style: TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.purple,
        ),
      ),
    );
  }
}
