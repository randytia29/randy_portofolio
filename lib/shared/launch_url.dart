import 'package:url_launcher/url_launcher.dart';

class LaunchURL {
  static Future<void> openURL(String urlString) async {
    final uri = Uri.parse(urlString);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
    // if (await canLaunch(urlString)) {
    //   await launch(urlString, forceWebView: true, enableJavaScript: true);
    // }
  }
}
