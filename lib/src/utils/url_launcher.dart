import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtil {
  Future<void> launchWeb(String url) async {
    final Uri launchUri = Uri.parse(url);
    await launchUrl(
      launchUri,
      mode: LaunchMode.externalApplication,
    );
  }
}
