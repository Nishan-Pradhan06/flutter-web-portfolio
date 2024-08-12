import 'package:flutter/material.dart';
import 'package:portfolio/views/pages/platform/desktop_view.dart';
import 'package:portfolio/views/pages/platform/mobile_view.dart';
import 'package:provider/provider.dart';
import '../../constants/theme/colors.dart';
import '../../providers/theme_providers.dart';
import '../components/appbar/platform/appbar.dart';
import '../components/end_drawer_nav.dart';
import '../components/floating_buttom.dart';
import '../components/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return Scaffold(
      backgroundColor: themeProvider.isDarkMode
          ? BrandColors.darkSecondary
          : BrandColors.lightSecondary,
      appBar: const CustomAppBar(),
      endDrawer: Responsive.isMobile(context) ? const EndDrawerView() : null,
      body: const SingleChildScrollView(
        child: Responsive(
          desktop: DesktopViewPage(),
          mobile: MobileViewPage(),
        ),
      ),
      floatingActionButton: Responsive.isMobile(context)
          ? const DarkLightModeFloatingButton()
          : null,
    );
  }
}
