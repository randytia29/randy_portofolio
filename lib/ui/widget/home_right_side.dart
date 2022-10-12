import 'package:flutter/material.dart';
import 'package:randy_portofolio/shared/image_assets.dart';

class HomeRightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssets.photo,
      fit: BoxFit.contain,
    );
  }
}
