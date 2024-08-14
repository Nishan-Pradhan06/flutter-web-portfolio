import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/constants/theme/colors.dart';
import 'package:portfolio/views/components/herosection/text_component.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../providers/theme_providers.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      text: 'Hi! I am,',
                      color: themeProvider.isDarkMode
                          ? BrandColors.lightPrimary
                          : BrandColors.darkPrimary,
                      fontSize: 20.0,
                    ),
                    const SizedBox(height: 10.0),
                    TextComponent(
                      text: 'Nishan Pradhan',
                      color: themeProvider.isDarkMode
                          ? BrandColors.lightPrimary
                          : BrandColors.darkSecondary,
                      fontSize: 65.0,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          TextComponent(
                            text: 'A ',
                            color: themeProvider.isDarkMode
                                ? BrandColors.lightPrimary
                                : BrandColors.darkPrimary,
                            fontSize: 34.0,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: 34.0,
                              fontFamily: 'custom',
                              color: themeProvider.isDarkMode
                                  ? BrandColors.lightSecondary
                                  : BrandColors.darkSecondary,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText('STUDENT'),
                                RotateAnimatedText('ANDROID DEVELOPER'),
                              ],
                              repeatForever: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 55,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: themeProvider.isDarkMode
                                  ? BrandColors.lightPrimary
                                  : BrandColors.darkPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              launchUrlString(linkedin);
                            },
                            child: const Text(
                              "Get In Touch",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: CircleAvatar(
                    maxRadius: 200,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/img/hero.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
