import 'package:flutter/material.dart';

class DesktopViewPage extends StatelessWidget {
  const DesktopViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(),
    );
  }
}
