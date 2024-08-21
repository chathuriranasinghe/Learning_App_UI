import 'package:flutter/material.dart';
import 'package:learning_app_ui/widgets/custom_button.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key,
      required this.screen_size,
      required this.icon,
      required this.name,
      this.color = Colors.blue});

  final Size screen_size;
  final IconData icon;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screen_size.width * 0.4,
      height: 50,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
