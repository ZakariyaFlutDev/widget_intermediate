import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  static const String id = "page_view_page";

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
   PageController  _pageController = PageController();
  late int selectedPage=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View and Bottom Navigation Bar"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            selectedPage = index;
          });
        },
        children: [
          Container(
            color: Colors.greenAccent,
            child: const Center(
              child: Text("Page One"),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(
              child: Text("Page Two"),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text("Page Three"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Colors.blue,
        currentIndex: selectedPage,
        onTap: (int index){
          setState(() {
            selectedPage = index;
            _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });

        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
