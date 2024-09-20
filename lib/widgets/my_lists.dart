import 'package:flutter/material.dart';

class MyLists extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;

  const MyLists({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset(iconPath),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blueGrey
                  )),
                  Text(subtitle, style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.blueGrey
                  )),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.black54),
        ]
      ),
    );
  }
}
