import 'package:url_launcher/url_launcher.dart';

class Services {
  static launchURL(String urlLink) async {
    final Uri url = Uri.parse(urlLink );
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
 
    }