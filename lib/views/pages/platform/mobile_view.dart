import 'package:flutter/material.dart';

class MobileViewPage extends StatelessWidget {
  const MobileViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            // Center(
            //   child: Image.asset(
            //     "assets/img/logo.png",
            //     height: 500.0,
            //     // width: 400.0,
            //   ),
            // ),
             Center(
              child: Padding(
                padding: EdgeInsets.only(top: 460),
                child: Text(
                  'Nishan Pradhan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
         Text(
          'I am a developer and i am looking for dev role across Nepal.',
          textAlign: TextAlign.center,
        ),
         SizedBox(
          height: 10,
        ),
         Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            Chip(
              label:
                  Text('Full stack Developer', style: TextStyle(fontSize: 11)),
            ),
            Chip(
              label: Text('Web App Developer', style: TextStyle(fontSize: 11)),
            ),
            Chip(
              label: Text(' App Developer', style: TextStyle(fontSize: 11)),
            ),
          ],
        ),
      ],
    );
  }
}
