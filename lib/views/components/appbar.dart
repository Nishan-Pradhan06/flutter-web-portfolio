import 'package:flutter/material.dart';
import 'package:portfolio/views/components/appbar/desktop_view.dart';
import 'package:portfolio/views/components/appbar/mobile_view.dart';
import 'package:portfolio/views/components/responsive.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopViewAppBar(),
      mobile: MobileViewAppBar(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
