import 'package:flutter/material.dart';
import 'package:widgets_intermideate/pages/drawer_page.dart';
import 'package:widgets_intermideate/pages/grid_view_page.dart';
import 'package:widgets_intermideate/pages/home_page.dart';
import 'package:widgets_intermideate/pages/list_view_page.dart';
import 'package:widgets_intermideate/pages/page_controller_navigation_bar_page.dart';
import 'package:widgets_intermideate/pages/page_view_page.dart';
import 'package:widgets_intermideate/pages/single_child_scroll_view_page.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DrawerPage.id: (context) => const DrawerPage(),
        ScrollViewPage.id: (context) => const ScrollViewPage(),
        ListViewPage.id: (context) => const ListViewPage(),
        GridViewPage.id: (context) => const GridViewPage(),
        PageViewPage.id: (context) => const PageViewPage(),
        PageControllerNavigationBarPage.id: (context) => const PageControllerNavigationBarPage(),
      },
    );
  }
}
