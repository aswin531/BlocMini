import 'package:blocmini/presentation/core/services/theme_services.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_bloc.dart';
import 'package:blocmini/presentation/screens/news/newsbloc/newsbloc_event.dart';
import 'package:blocmini/presentation/screens/news/widgets/custom_appbar.dart';
import 'package:blocmini/presentation/screens/news/widgets/custombody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<NewsBloc>(context).add(NewsRequestedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final themedata = Theme.of(context);
    return Consumer<ThemeServiceProvider>(
      builder: (context, themeProvider, child) {
        return const Scaffold(
            // backgroundColor: white,
            appBar: CustomAppBar(),
            body: CustomBodyHome());
      },
    );
  }
}
