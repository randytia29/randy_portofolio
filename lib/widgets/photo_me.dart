import 'package:flutter/widgets.dart';

import '../theme_manager/asset_manager.dart';

class PhotoMe extends StatelessWidget {
  const PhotoMe({
    super.key,
    required this.heightPhoto,
  });

  final double heightPhoto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightPhoto,
      width: double.maxFinite,
      child: Image.asset(
        AssetManager.photo,
        fit: BoxFit.contain,
      ),
    );
  }
}
