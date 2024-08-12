import 'package:flutter/material.dart';
import 'package:portfolio/views/pages/platform/desktop_view.dart';
import 'package:portfolio/views/pages/platform/mobile_view.dart';
import '../components/appbar.dart';
import '../components/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      // endDrawer: Responsive.isMobile(context) ? const EndDrawerView() : null,
      body: const SingleChildScrollView(
        child: Responsive(
          desktop: DesktopViewPage(),
          mobile: MobileViewPage(),
        ),
      ),
    );
  }
}
