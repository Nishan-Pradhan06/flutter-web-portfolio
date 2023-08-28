import 'package:flutter/material.dart';
import 'package:portfolio/component/utils/string.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 85),
      child: Center(
        child: Column(
          children: [
            Text(
              'Get to know More',
            ),
            Text(
              'About Me',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/img.png',
                  height: 350,
                  width: 350,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          child: Text('hhhhh'),
                        ),
                        Card(),
                      ],
                    ),
                    Text(aboutme),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
