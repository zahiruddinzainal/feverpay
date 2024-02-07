import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  final Color backgroundColor;

  const BoxItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor = Colors.black,
    this.backgroundColor = const Color.fromARGB(112, 234, 233, 233),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, // Adjust the width as needed
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 24.0,
                color: iconColor,
              ),
              SizedBox(width: 8.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
