import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/theme/colors.dart';
import '../../providers/theme_providers.dart';

class DarkLightModeFloatingButton extends StatelessWidget {
  const DarkLightModeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return FloatingActionButton(
      mini: true,
      foregroundColor:
          themeProvider.isDarkMode ? Colors.white : BrandColors.darkPrimary,
      backgroundColor: themeProvider.isDarkMode
          ? BrandColors.darkPrimary
          : BrandColors.lightPrimary,
      onPressed: () {
        themeProvider.toggleTheme();
      },
      child: Icon(
        themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode_outlined,
      ),
    );
  }
}
