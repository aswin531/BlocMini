import 'package:blocmini/presentation/core/services/theme_services.dart';
import 'package:blocmini/presentation/core/utils/colors.dart';
import 'package:blocmini/presentation/core/utils/textstyles.dart';
import 'package:blocmini/presentation/screens/news/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Consumer<ThemeServiceProvider>(
      builder: (context, themeProvider, child) {
        return Scaffold(
          // backgroundColor: white,
          appBar: const CustomAppBar(),
          body: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Breaking News",
                  style: MyTextStyles.breakNews,
                ),
                Container()
              ],
            ),
          ),
        );
      },
    );
  }
}
