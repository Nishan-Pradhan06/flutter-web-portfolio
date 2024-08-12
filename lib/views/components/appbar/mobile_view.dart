import 'package:flutter/material.dart';
import '../../../constants/theme/colors.dart';

class MobileViewAppBar extends StatelessWidget {
  const MobileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2.0,
      foregroundColor: Colors.black,
      backgroundColor: BrandColors.kSecondary,
      scrolledUnderElevation: 6.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      centerTitle: true,
      leadingWidth: 100,
      leading: const Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(
            'Nishan.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
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
