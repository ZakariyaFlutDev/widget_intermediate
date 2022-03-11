import 'package:flutter/material.dart';
class TstThree extends StatefulWidget {
  const TstThree({Key? key}) : super(key: key);

  static const String id = "task_three";

  @override
  _TstThreeState createState() => _TstThreeState();
}

class _TstThreeState extends State<TstThree> {

  PageController _pageController = PageController();
  int selectPage = 0;

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
        title: Text("Task 3"),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            selectPage = index;
          });
        },
        children: [
          Container(
            color: Colors.yellowAccent,
            child: const Center(
              child: Text("First Page"),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: const Center(
              child: Text("Second Page"),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            child: const Center(
              child: Text("Third Page"),
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: const Center(
              child: Text("Fourth Page"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.pink,
        onTap: (int index){
          setState(() {
            selectPage = index;
            _pageController.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        ],
      ),
    );
  }
}
