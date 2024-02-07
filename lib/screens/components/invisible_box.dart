import 'package:flutter/material.dart';

class InvisibleBox extends StatelessWidget {
  final IconData icon;
  final String text;

  const InvisibleBox({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      padding: const EdgeInsets.all(16.0),
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.pink,
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
