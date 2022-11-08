import 'package:flutter/material.dart';
import 'package:portfolio_app/config/config.dart';
import 'package:portfolio_app/page/main_page.dart';
import 'package:portfolio_app/theme/app_theme.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

// MADE by Aomine (https://github.com/AomineD)
void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.titlePage,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: AppTheme.mainTheme,
    );
  }
}
