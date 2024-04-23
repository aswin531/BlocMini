import 'package:blocmini/presentation/core/services/theme_services.dart';
import 'package:blocmini/presentation/core/utils/themestyle.dart';
import 'package:blocmini/presentation/screens/news/news_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeServiceProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServiceProvider>(
      builder: (context, themeService, child) {
        return MaterialApp(
          home: const HomeScreen(),
          debugShowCheckedModeBanner: false,
          themeMode: themeService.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}
