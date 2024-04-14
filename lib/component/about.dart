import 'package:flutter/material.dart';
import 'package:portfolio/component/utils/string.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 85),
      child: Center(
        child: Column(
          children: [
            const Text(
              'Get to know More',
            ),
            const Text(
              'About Me',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/img/img1.png',
                  height: 330,
                  width: 330,
                ),
                Wrap(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 35, horizontal: 120),
                              decoration: BoxDecoration(
                                border: Border.all(width: 2.0),
                                borderRadius: BorderRadius.circular(30),
                                // color: Colors.yellow,
                              ),
                              child: const Column(
                                children: [
                                  Icon(Icons.no_sim),
                                  Text(
                                    'Exprience',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text('+2 Exprience'),
                                  Text('Frontend Developer'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 35, horizontal: 120),
                              decoration: BoxDecoration(
                                border: Border.all(width: 2.0),
                                borderRadius: BorderRadius.circular(30),
                                // color: Colors.yellow,
                              ),
                              child: const Column(
                                children: [
                                  Icon(Icons.no_accounts),
                                  Text(
                                    'Education',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text('+2 '),
                                  Text('Bachelor BCA'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(aboutme),
                        ),
                      ],
                    ),
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
