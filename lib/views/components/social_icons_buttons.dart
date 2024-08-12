import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double size;
  final Color color;

  const SocialIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.size = 24.0,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}

