import 'package:flutter/material.dart';
import 'package:portfolio/views/components/nav_text_button.dart';

class EndDrawerView extends StatelessWidget {
  const EndDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavTextButton(title: 'Home', onPressed: () {}),
                NavTextButton(title: 'About', onPressed: () {}),
                NavTextButton(title: 'Skills', onPressed: () {}),
                NavTextButton(title: 'Projects', onPressed: () {}),
                NavTextButton(title: 'Services', onPressed: () {}),
                NavTextButton(title: 'Contact', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
