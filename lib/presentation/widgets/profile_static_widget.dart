import 'package:flutter/material.dart';

class ProfileStaticWidget extends StatelessWidget {
  const ProfileStaticWidget({
    Key? key,
    required this.number,
    required this.title,
    required this.color,
  }) : super(key: key);
  final int number;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$number",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 24, color: color),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
