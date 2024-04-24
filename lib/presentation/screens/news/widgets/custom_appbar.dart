import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_bloc.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_event.dart';
import 'package:flutter/material.dart';
import 'package:blocmini/presentation/core/services/theme_services.dart';
import 'package:blocmini/presentation/core/utils/colors.dart';
import 'package:blocmini/presentation/core/utils/textstyles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServiceProvider>(
      builder: (context, themeProvider, child) {
        return AppBar(
          toolbarHeight: preferredSize.height,
          backgroundColor: Colors.transparent,
          title: const TitleContainer(),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<NewsBloc>(context).add(NewsRequestedEvent());
                },
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.green,
                  size: 30,
                )),
            IconButton(
              icon: Icon(
                themeProvider.getThemeIcon(),
                color: black,
                size: 30,
              ),
              onPressed: () {
                themeProvider.toggleTheme();
              },
            ),
          ],
        );
      },
    );
  }
}

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NEWS',
              style: MyTextStyles.headingStyle,
            ),
            const SizedBox(width: 5),
            Text(
              'BLoC',
              style: MyTextStyles.headinglightStyle,
            ),
          ],
        ),
      ),
    );
  }
}
