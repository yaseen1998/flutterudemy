import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
class UrlLuncher extends StatelessWidget {
  const UrlLuncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          onPressed: () async {
            const url = 'https://flutter.dev';
            try {
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url),
                mode: LaunchMode.inAppWebView,
                webViewConfiguration: WebViewConfiguration(
                  enableJavaScript: true,
                  enableDomStorage: true,
                  
                ),
                );
              } else {
                throw 'Could not launch $url';
              }
            } catch (e) {
              print(e.toString());
            }
            
          },
          child: Text('Launch URL'),
        ),
      ),
    );
  }
}