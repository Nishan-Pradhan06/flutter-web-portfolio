import 'package:flutter/material.dart';
import 'package:portfolio/constants/theme/colors.dart';
import 'package:portfolio/providers/theme_providers.dart';
import 'package:provider/provider.dart';

class NavTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const NavTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'custom',
          color:
              themeProvider.isDarkMode ? Colors.white : BrandColors.darkPrimary,
        ),
      ),
    );
  }
}
