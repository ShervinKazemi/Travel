import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel/presentation/home/home_page.dart';
import 'package:travel/presentation/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomePage()
    );
  }
}