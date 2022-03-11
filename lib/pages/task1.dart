import 'package:flutter/material.dart';
class TaskOne extends StatefulWidget {
  const TaskOne({Key? key}) : super(key: key);

  static const String id = "task_one";

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
          _itemOfList(img: "assets/images/ic_image1.jpeg", name: "Bird", time: "22:17", content: "This bird is beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image2.jpeg", name: "Beatifuel Birds", time: "09:33", content: "This birds are beatifual and very small"),
          _itemOfList(img: "assets/images/ic_image3.jpeg", name: "WaterFall", time: "15:45", content: "This waterfall is beatifual and height"),
        ],
      ),
    );
  }

  Widget _itemOfList({img, name, time, content}){
    return Container(
      height: 120,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            child: Image(
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(name, style: TextStyle(fontSize: 18),),
                        SizedBox(width: 20,),
                        Text(time, style: TextStyle(fontSize: 17),)
                      ],
                    ),
                  ),
                  Text(content),
                ],
              ),
            )
          ),
          Container(
            width: 50,
            child: Center(
              child: Icon(Icons.keyboard_arrow_right),
            ),
          )
        ],
      ),

    );
  }
}
