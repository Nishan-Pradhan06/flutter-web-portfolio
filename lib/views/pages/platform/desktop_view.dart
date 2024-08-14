import 'package:flutter/material.dart';
import 'package:portfolio/views/pages/screen/hero_section.dart';

class DesktopViewPage extends StatelessWidget {
  const DesktopViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Column(
        children: [
          HeroSection(),
        ],
      ),
    );
  }
}
