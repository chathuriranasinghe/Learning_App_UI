import 'package:flutter/material.dart';
import 'package:learning_app_ui/models/class_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ClassModel> classes = [
    ClassModel(
        name: "Mathematics", image: "assets/maths.png", studentCount: 200),
    ClassModel(name: "Music", image: "assets/music.jpeg", studentCount: 150),
    ClassModel(
        name: "English", image: "assets/english.jpeg", studentCount: 375),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.note_rounded), label: "My Works"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: "Account")
      ]),
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
      body: ListView.builder(
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(classes[index].image),
              ),
              title: Text(
                classes[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Student Count - ${classes[index].studentCount}"),
            );
          }),
    );
  }
}
