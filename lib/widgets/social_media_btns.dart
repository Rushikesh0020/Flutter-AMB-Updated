import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialMediaBtns extends StatefulWidget {
  const SocialMediaBtns({
    Key? key,
  }) : super(key: key);

  @override
  _SocialMediaBtnsState createState() => _SocialMediaBtnsState();
}

class _SocialMediaBtnsState extends State<SocialMediaBtns> {
  Future<void>? _launched = null;
  String _launchTejgyanUrl = 'https://www.facebook.com/Tejgyan/';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLink(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.whatsapp,
                  color: Color(0xFF25D366)),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan WhatsApp',
              onPressed: () {
                _launchUniversalLink(
                    'https://api.whatsapp.com/send/?phone=%2B919921008060&text&app_absent=0');
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.telegram,
                  color: Color(0xFF0088cc)),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Telegram Page',
              onPressed: () {
                _launchUniversalLink('https://t.me/thetejgyan');
              },
            ),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.youtube,
                color: Color(0xFFFF0000),
              ),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Youtube Page',
              onPressed: () {
                _launchUniversalLink(
                    'https://www.youtube.com/channel/UC6hJtatVsQwfjd5C8Q-ZbRA');
              },
            ),
            IconButton(
              icon: const Icon(Icons.facebook),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Facebook Page',
              onPressed: () {
                _launchUniversalLink('https://www.facebook.com/Tejgyan/');
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.instagram,
                color: Color(0xFFE1306C),
              ),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Instagram',
              onPressed: () {
                _launchUniversalLink('https://www.instagram.com/thetejgyan/');
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.twitter),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Twitter Page',
              onPressed: () {
                _launchUniversalLink('https://twitter.com/Sirshree');
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.linkedin,
                  color: Color(0xFF0e76a8)),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan LinkedIn Page',
              onPressed: () {
                _launchUniversalLink(
                    'https://www.linkedin.com/in/tejgyan-foundation-2365b941/');
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.pinterest,
                  color: Color(0xFFE60023)),
              iconSize: 40.0,
              color: Color(0xFF3b5998),
              tooltip: 'Tejgyan Pinterest Page',
              onPressed: () {
                _launchUniversalLink('https://in.pinterest.com/tejgyan/');
              },
            ),
          ],
        ),
      ],
    );
  }
}

// _openJioSavaan() async {
//   // String dt = data['JioSavaan'] as String;
//   String dt =
//       'https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en_IN&gl=US';
//   bool isInstalled = await DeviceApps.isAppInstalled('com.facebook.android');
//   if (isInstalled != false) {
//     print('Hello There');
//     AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
//     await intent.launch();
//   } else {
//     String url = dt;
//     if (await canLaunch(url))
//       await launch(url);
//     else
//       throw 'Could not launch $url';
//   }
// }

// _launchURL(String appLink) async {
//   // const url = 'https://flutter.io';
//   String url = appLink;
//   // if (await canLaunch(url)) {
//   await launch(url);
//   // }
//   // else {
//   //   throw 'Could not launch $url';
//   // }
// }

// // IconButton(onPressed: (){}, icon: Image.asset('name') )
// void _launchApp() async {
//   await LaunchApp.openApp(
//     androidPackageName: 'com.facebook.katana',
//     // iosUrlScheme: 'pulsesecure://',
//     appStoreLink:
//         'itms-apps://itunes.apple.com/us/   app/pulse-secure/id945832041',
//   );
//   // openStore: false
// }
