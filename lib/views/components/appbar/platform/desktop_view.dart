import 'package:flutter/material.dart';
import 'package:portfolio/views/components/nav_text_button.dart';
import 'package:provider/provider.dart';
import '../../../../constants/theme/colors.dart';
import '../../../../providers/theme_providers.dart';
import '../leading.dart';

class DesktopViewAppBar extends StatelessWidget {
  const DesktopViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 10.0,
        foregroundColor:
            themeProvider.isDarkMode ? Colors.white : BrandColors.darkPrimary,
        backgroundColor: themeProvider.isDarkMode
            ? BrandColors.darkPrimary
            : BrandColors.lightPrimary,
        scrolledUnderElevation: 6.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        leading: const Leading(),
        leadingWidth: 106,
        centerTitle: true,
        title: Row(
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
        actions: [
          Consumer<ThemeProviders>(
            builder: (context, lightToggleProvider, child) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    lightToggleProvider.toggleTheme();
                  },
                  icon: Icon(
                    color: lightToggleProvider.isDarkMode
                        ? Colors.white
                        : BrandColors.darkPrimary,
                    lightToggleProvider.isDarkMode
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
