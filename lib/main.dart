import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_providers.dart';
import 'package:portfolio/views/pages/home_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProviders>(create: (_) => ThemeProviders()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProviders>(context);
    return MaterialApp(
      title: 'Nishan Pradhan - Flutter Developer & Computer Science Student',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: const HomePage(),
    );
  }
}
