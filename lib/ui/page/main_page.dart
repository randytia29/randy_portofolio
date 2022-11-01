import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(),
          Expanded(
            child: child,
          )
        ],
      ),
    );
  }
}
