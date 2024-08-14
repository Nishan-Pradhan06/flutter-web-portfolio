import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/views/components/nav_text_button.dart';
import 'package:portfolio/views/components/social_icons_buttons.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../constants/theme/colors.dart';
import '../../providers/theme_providers.dart';

class EndDrawerView extends StatelessWidget {
  const EndDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: themeProvider.isDarkMode
          ? BrandColors.darkPrimary
          : BrandColors.lightPrimary,
      width: 250,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 30, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavTextButton(title: 'Home', onPressed: () {}),
              NavTextButton(title: 'About', onPressed: () {}),
              NavTextButton(title: 'Skills', onPressed: () {}),
              NavTextButton(title: 'Projects', onPressed: () {}),
              NavTextButton(title: 'Services', onPressed: () {}),
              NavTextButton(title: 'Contact', onPressed: () {}),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(
                    onPressed: () {
                      launchUrlString(gitHub);
                    },
                    icon: FontAwesomeIcons.github,
                    color: Colors.black,
                  ),
                  SocialIconButton(
                    onPressed: () {
                      launchUrlString(linkedin);
                    },
                    icon: FontAwesomeIcons.linkedin,
                    color: Colors.blue[900]!,
                  ),
                  SocialIconButton(
                    onPressed: () {
                      launchUrlString(youtube);
                    },
                    icon: FontAwesomeIcons.youtube,
                    color: Colors.red[900]!,
                  ),
                  SocialIconButton(
                    onPressed: () {
                      launchUrlString(facebook);
                    },
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blue[900]!,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
