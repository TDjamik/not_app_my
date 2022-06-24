import 'package:flutter/material.dart';
import 'package:not_app_my/pages/add_task_page.dart';
import 'package:not_app_my/pages/grid_page.dart';
import 'package:not_app_my/pages/home_page.dart';
import 'package:not_app_my/pages/search_page.dart';
import 'package:not_app_my/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SearchPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        SearchPage.id: (context) => const SearchPage(),
        GridPage.id: (context) => const GridPage(),
        AddTask.id: (context) => const AddTask(),
      },
    );
  }
}


