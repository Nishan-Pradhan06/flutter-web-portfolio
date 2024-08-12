import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/theme/colors.dart';
import '../../../providers/theme_providers.dart';

class DesktopViewAppBar extends StatelessWidget {
  const DesktopViewAppBar({super.key});

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
      title: Row(
        children: [
          // NavTextButton(title: 'Home', onPressed: () {}),
          // NavTextButton(title: 'About', onPressed: () {}),
          // NavTextButton(title: 'Skills', onPressed: () {}),
          // NavTextButton(title: 'Projects', onPressed: () {}),
          // NavTextButton(title: 'Services', onPressed: () {}),
          // NavTextButton(title: 'Contact', onPressed: () {}),
        ],
      ),
      actions: [
        Consumer<ThemeProviders>(
            builder: (context, lightToggleProvider, child) {
          return IconButton(
            onPressed: () {
              lightToggleProvider.toggleTheme();
            },
            icon: Icon(
              lightToggleProvider.isDarkMode
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          );
        }),
      ],
    );
  }
}
