import 'package:flutter/material.dart';
class TabBarViewPage extends StatefulWidget {
  const TabBarViewPage({Key? key}) : super(key: key);

  static const String id = "tab_bar_view";

  @override
  _TabBarViewPageState createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar View"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home",),
                Tab(icon: Icon(Icons.school), text: "Hschool",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellowAccent,
                child: Center(
                  child: Text("Home Page"),
                ),
              ),
              Container(
                color: Colors.yellowAccent,
                child: Center(
                  child: Text("School Page"),
                ),
              ),
            ],
          ),

        )
    );
  }
}
