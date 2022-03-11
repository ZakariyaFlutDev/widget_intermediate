import 'package:flutter/material.dart';
class ListViewHPage extends StatefulWidget {
  const ListViewHPage({Key? key}) : super(key: key);

  static const String id = "list_view_hpage";

  @override
  _ListViewHPageState createState() => _ListViewHPageState();
}

class _ListViewHPageState extends State<ListViewHPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Horizontal"),
      ),
      body: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image3.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image3.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
            _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
          ],
        ),
      )
    );
  }

  Widget _itemOfList({title, img}){
    return Container(
      width: 150,
      margin:EdgeInsets.all(5),
      color: Colors.redAccent,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
          SizedBox(height: 5,),
          Text(title, style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
