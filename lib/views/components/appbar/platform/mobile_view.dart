import 'package:flutter/material.dart';
import 'package:portfolio/views/components/appbar/leading.dart';
import '../../../../constants/theme/colors.dart';

class MobileViewAppBar extends StatelessWidget {
  const MobileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2.0,
      foregroundColor: Colors.black,
      backgroundColor: BrandColors.darkPrimary,
      scrolledUnderElevation: 6.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      centerTitle: true,
      leadingWidth: 100,
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
    );
  }
}
