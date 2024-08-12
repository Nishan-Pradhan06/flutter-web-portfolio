import 'package:flutter/material.dart';
import 'package:portfolio/views/components/appbar/leading.dart';
import 'package:provider/provider.dart';
import '../../../../constants/theme/colors.dart';
import '../../../../providers/theme_providers.dart';

class MobileViewAppBar extends StatelessWidget {
  const MobileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.0,
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
        centerTitle: true,
        leadingWidth: 106,
        leading: const Leading(),
        actions: [
          IconButton(
            hoverColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(Icons.menu_rounded),
          )
        ],
      ),
    );
  }
}
