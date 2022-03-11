import 'package:flutter/material.dart';
import 'package:widget_intermediate/pages/greid_view_page.dart';
import 'package:widget_intermediate/pages/home_page.dart';
import 'package:widget_intermediate/pages/list_view_hpage.dart';
import 'package:widget_intermediate/pages/list_view_vpage.dart';
import 'package:widget_intermediate/pages/page_view.dart';
import 'package:widget_intermediate/pages/tab_bar_view.dart';
import 'package:widget_intermediate/pages/task1.dart';
import 'package:widget_intermediate/pages/task_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        PageViewPage.id:(context) => PageViewPage(),
        ListViewVPage.id:(context) => ListViewVPage(),
        ListViewHPage.id:(context) => ListViewHPage(),
        GridViewPage.id:(context) => GridViewPage(),
        TaskOne.id:(context) => TaskOne(),
        TstThree.id:(context) => TstThree(),
        TabBarViewPage.id:(context) => TabBarViewPage(),
      },
    );
  }
}
