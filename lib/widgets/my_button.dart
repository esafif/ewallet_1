import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String textButton;

  const MyButton({
    super.key,
    required this.iconPath,
    required this.textButton
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        const SizedBox(height: 4),
        Text(textButton, style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black54
        ),)
      ],
    );
  }
}
