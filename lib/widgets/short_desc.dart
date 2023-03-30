import 'package:flutter/widgets.dart';

class ShortDesc extends StatelessWidget {
  const ShortDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I build powerful and highly scalable applications using Flutter.',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }
}
