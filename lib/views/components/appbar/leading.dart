import 'package:flutter/material.dart';
import 'package:portfolio/constants/theme/colors.dart';
import 'package:provider/provider.dart';

import '../../../providers/theme_providers.dart';

class Leading extends StatelessWidget {
  const Leading({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              'Nishan.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: themeProvider.isDarkMode
                    ? Colors.white
                    : BrandColors.darkPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
