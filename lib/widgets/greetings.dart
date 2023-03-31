import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hey There,\nI\'m Randy',
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
