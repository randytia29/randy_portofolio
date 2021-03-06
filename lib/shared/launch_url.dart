import 'package:url_launcher/url_launcher.dart';

class LaunchURL {
  static Future<void> openURL(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(urlString, forceWebView: true, enableJavaScript: true);
    }
  }
}
