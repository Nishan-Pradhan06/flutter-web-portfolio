// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/navbar/links.dart';

// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import '../component/utils/constants_url_lanchur.dart';

List<Widget> navItems = [
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(onPressed: () {}, child: const Text('Home')),
  ),
  const SizedBox(width: 20),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(onPressed: () {
      
    }, child: const Text('About')),
  ),
  const SizedBox(width: 20),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(onPressed: () {}, child: const Text('Skills')),
  ),
  const SizedBox(width: 20),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(onPressed: () {}, child: const Text('Services')),
  ),
  const SizedBox(width: 20),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(onPressed: () {}, child: const Text('Contacts')),
  ),
  const SizedBox(
    width: 280,
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
          onPressed: () {
            launchUrlString(facebook);
            debugPrint('Facebook Clicked');
          },
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Color.fromARGB(255, 99, 27, 157),
          )),
      IconButton(
          onPressed: () {
            launchUrlString(linkedin);
            debugPrint('Linkedin Clicked');
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: Color.fromARGB(255, 99, 27, 157),
          )),
      IconButton(
        onPressed: () {
          launchUrlString(gitHub);
          debugPrint('Github Clicked');
        },
        icon: const FaIcon(
          FontAwesomeIcons.github,
          color: Color.fromARGB(255, 99, 27, 157),
        ),
      ),
    ],
  ),
  const SizedBox(
    width: 50,
  )
];
